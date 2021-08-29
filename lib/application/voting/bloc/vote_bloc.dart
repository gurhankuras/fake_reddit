import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_bloc.freezed.dart';
part 'vote_event.dart';
part 'vote_state.dart';

class VoteBloc extends Bloc<VoteEvent, VoteState> {
  VoteBloc(int upvotes) : super(VoteState.unvoted(upvotes));

  @override
  Stream<VoteState> mapEventToState(
    VoteEvent event,
  ) async* {
    yield* event.map(
      upvoted: (e) async* {
        yield* state.map(
          unvoted: (s) async* {
            yield VoteState.upvoted(state.upvotes + 1);
          },
          downvoted: (s) async* {
            yield VoteState.upvoted(state.upvotes + 2);
          },
          upvoted: (s) async* {
            yield VoteState.unvoted(state.upvotes - 1);
          },
        );
      },
      downvoted: (e) async* {
        yield* state.map(
          unvoted: (s) async* {
            yield VoteState.downvoted(state.upvotes - 1);
          },
          downvoted: (s) async* {
            yield VoteState.unvoted(state.upvotes + 1);
          },
          upvoted: (s) async* {
            yield VoteState.downvoted(state.upvotes - 2);
          },
        );
      },
    );
  }
}
