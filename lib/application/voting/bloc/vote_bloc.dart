import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../utility/log_init.dart';

part 'vote_bloc.freezed.dart';
part 'vote_event.dart';
part 'vote_state.dart';

@injectable
class VoteBloc extends Bloc<VoteEvent, VoteState> {
  VoteBloc(@factoryParam int? upvotes) : super(VoteState.unvoted(upvotes)) {
    registerEventHandlers();
    logInit(VoteBloc);
  }

  void registerEventHandlers() {
    on<Upvoted>(_onUpvoted);
    on<Downvoted>(_onDownvoted);
  }

  FutureOr<void> _onUpvoted(Upvoted event, Emitter<VoteState> emit) {
    state.map(
      unvoted: (s) => emit(VoteState.upvoted(s.upvotes! + 1)),
      downvoted: (s) => emit(VoteState.upvoted(s.upvotes! + 2)),
      upvoted: (s) => emit(VoteState.unvoted(s.upvotes! - 1)),
    );
  }

  FutureOr<void> _onDownvoted(Downvoted event, Emitter<VoteState> emit) {
    state.map(
      unvoted: (s) => emit(VoteState.downvoted(s.upvotes! - 1)),
      downvoted: (s) => emit(VoteState.unvoted(s.upvotes! + 1)),
      upvoted: (s) => emit(VoteState.downvoted(s.upvotes! - 2)),
    );
  }
}
