import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/inbox/i_inbox_repository.dart';
import '../../../domain/inbox/inbox_message.dart';
import '../../../utility/log_init.dart';

part 'inbox_messages_bloc.freezed.dart';
part 'inbox_messages_event.dart';
part 'inbox_messages_state.dart';

@injectable
class InboxMessagesBloc extends Bloc<InboxMessagesEvent, InboxMessagesState> {
  final IInboxRepository repository;
  InboxMessagesBloc(
    this.repository,
  ) : super(InboxMessagesState.initial()) {
    logInit(InboxMessagesBloc);
  }

  @override
  Stream<InboxMessagesState> mapEventToState(
    InboxMessagesEvent event,
  ) async* {
    yield* event.map(
      fetchingStarted: (e) async* {
        yield state.copyWith(loading: true);
        final messagesOr = await repository.getInboxMessages();
        yield* messagesOr.fold(
          (f) async* {
            print(f);
            yield state.copyWith(loading: false, failed: true);
          },
          (messages) async* {
            yield state.copyWith(
              messages: messages,
              loading: false,
              failed: false,
            );
          },
        );
      },
      messageRead: (e) async* {
        final id = e.id;
        final unitOr = await repository.markInboxMessageAsRead(id);
        // unitOr
        yield* unitOr.fold(
          (failure) async* {
            print(failure);
            yield state;
          },
          (_) async* {
            final updatedMessages = state.messages.map((m) {
              if (m.id == id) {
                return m.copyWith(hasRead: true);
              }
              return m;
            }).toList();

            yield state.copyWith(messages: updatedMessages);
          },
        );
      },
    );
  }
}
