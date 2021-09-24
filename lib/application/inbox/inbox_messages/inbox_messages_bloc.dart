import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/inbox/i_inbox_repository.dart';
import '../../../domain/inbox/inbox_message.dart';
import '../../../utility/log_init.dart';

part 'inbox_messages_bloc.freezed.dart';
part 'inbox_messages_event.dart';
part 'inbox_messages_state.dart';

// TODO: inbox_messages_bloc is same as inbox_activities_bloc. REFACTOR
@injectable
class InboxMessagesBloc extends Bloc<InboxMessagesEvent, InboxMessagesState> {
  final IInboxRepository repository;
  InboxMessagesBloc(
    this.repository,
  ) : super(InboxMessagesState.initial()) {
    logInit(InboxMessagesBloc);
  }

  void registerEventHandlers() {
    on<FetchingStarted>(_onFetchingStarted);
    on<MessageRead>(_onMessageRead);
  }

  FutureOr<void> _onFetchingStarted(
    FetchingStarted event,
    Emitter<InboxMessagesState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final messagesOr = await repository.getInboxMessages();

    messagesOr.fold(
      (f) => emit(state.copyWith(loading: false, failed: true)),
      (messages) => emit(
        state.copyWith(
          messages: messages,
          loading: false,
          failed: false,
        ),
      ),
    );
  }

  FutureOr<void> _onMessageRead(
    MessageRead event,
    Emitter<InboxMessagesState> emit,
  ) async {
    final id = event.id;
    final successOr = await repository.markInboxMessageAsRead(id);

    successOr.fold(
      (failure) => emit(state),
      (_) {
        final updatedMessages = state.messages.map((m) {
          if (m.id == id) {
            return m.copyWith(hasRead: true);
          }
          return m;
        }).toList();
        emit(state.copyWith(messages: updatedMessages));
      },
    );
  }
}
