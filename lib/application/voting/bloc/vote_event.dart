part of 'vote_bloc.dart';

@freezed
class VoteEvent with _$VoteEvent {
  const factory VoteEvent.upvoted() = _Upvoted;
  const factory VoteEvent.downvoted() = _Downvoted;
}
