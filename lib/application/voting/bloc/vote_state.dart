part of 'vote_bloc.dart';

@freezed
class VoteState with _$VoteState {
  // const factory VoteState() = _VoteState;
  // const factory VoteState.ini(int upvotes) = _Unvoted;
  const factory VoteState.unvoted(int upvotes) = _UnvotedState;
  const factory VoteState.downvoted(int upvotes) = _DownvotedState;
  const factory VoteState.upvoted(int upvotes) = _UpvotedState;
}
