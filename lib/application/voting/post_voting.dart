import 'package:flutter/widgets.dart';

class PostVoting with ChangeNotifier {
  int upvotes;
  late VoteState state;

  PostVoting({
    required this.upvotes,
  }) {
    state = UnvotedState(this);
  }

  void downvote() {
    state.downvote();
    notifyListeners();
  }

  void upvote() {
    state.upvote();
    notifyListeners();
  }

  void changeState(VoteState state) {
    this.state = state;
  }

  increase(int n) {
    upvotes += n;
  }

  decrease(int n) {
    upvotes -= n;
  }
}

abstract class VoteState {
  void upvote();
  void downvote();
}

class UpvotedState implements VoteState {
  final PostVoting postVoting;
  UpvotedState(this.postVoting);

  @override
  void downvote() {
    postVoting.decrease(2);
    postVoting.changeState(DownvotedState(postVoting));
  }

  @override
  void upvote() {
    postVoting.decrease(1);
    postVoting.changeState(UnvotedState(postVoting));
  }
}

class DownvotedState implements VoteState {
  final PostVoting postVoting;
  DownvotedState(this.postVoting);
  @override
  void downvote() {
    postVoting.increase(1);
    postVoting.changeState(UnvotedState(postVoting));
  }

  @override
  void upvote() {
    postVoting.increase(2);
    postVoting.changeState(UpvotedState(postVoting));
  }
}

class UnvotedState implements VoteState {
  final PostVoting postVoting;
  UnvotedState(this.postVoting);
  @override
  void downvote() {
    postVoting.decrease(1);
    postVoting.changeState(DownvotedState(postVoting));
  }

  @override
  void upvote() {
    postVoting.increase(1);
    postVoting.changeState(UpvotedState(postVoting));
  }
}
