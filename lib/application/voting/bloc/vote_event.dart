part of 'vote_bloc.dart';

@freezed
class VoteEvent with _$VoteEvent {
  const factory VoteEvent.upvoted() = Upvoted;
  const factory VoteEvent.downvoted() = Downvoted;
}
