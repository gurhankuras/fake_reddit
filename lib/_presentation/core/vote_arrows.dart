import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/post/widgets/post_action_bar.dart';

import '../../application/voting/post_voting.dart';
import '../../domain/post/post_entry.dart';
import 'constants/colors.dart';
import '../post/widgets/post_card.dart';

typedef AnimationStatusListener = void Function(AnimationStatus status);

class UpvoteButton extends StatefulWidget {
  const UpvoteButton({
    Key? key,
    // required this.entry,
  }) : super(key: key);

  // final PostEntry entry;

  @override
  _UpvoteButtonState createState() => _UpvoteButtonState();
}

const _kUpvoteArrowColor = Colors.red;
const _kDownvoteArrowColor = AppColors.jordyBlue;
const _kArrowUnselectedColor = AppColors.iron;
const _kArrowJumpAnimationDuration = Duration(milliseconds: 150);
const _kArrowJumpAnimationCurve = Curves.easeInOut;

class _UpvoteButtonState extends State<UpvoteButton>
    with TickerProviderStateMixin {
  late final AnimationController _upvoteController;
  late final AnimationController _downArrowController;

  late final Animation<Offset> _upvoteSlideAnimation;
  late final Animation<Offset> _downvoteSlideAnimation;

  AnimationStatusListener? _upvoteAnimationStatusListener;
  AnimationStatusListener? _downvoteAnimationStatusListener;

  @override
  void initState() {
    super.initState();
    _setUpAnimations();
  }

  @override
  void dispose() {
    super.dispose();
    if (_upvoteAnimationStatusListener != null) {
      _upvoteController.removeStatusListener(_upvoteAnimationStatusListener!);
    }
    if (_downvoteAnimationStatusListener != null) {
      _downArrowController
          .removeStatusListener(_downvoteAnimationStatusListener!);
    }
    _upvoteController.dispose();
    _downArrowController.dispose();
  }

  void _setUpAnimations() {
    _upvoteController =
        _createAnimationController(_upvoteAnimationStatusListener);
    _downArrowController =
        _createAnimationController(_downvoteAnimationStatusListener);

    final curvedAnimation = CurvedAnimation(
      parent: _upvoteController,
      curve: _kArrowJumpAnimationCurve,
    );
    final downvoteCurvedAnimation = CurvedAnimation(
      parent: _downArrowController,
      curve: _kArrowJumpAnimationCurve,
    );
    _upvoteSlideAnimation =
        Tween<Offset>(begin: Offset.zero, end: Offset(0, -1))
            .animate(curvedAnimation);
    _downvoteSlideAnimation =
        Tween<Offset>(begin: Offset.zero, end: Offset(0, 1))
            .animate(downvoteCurvedAnimation);
  }

  AnimationController _createAnimationController(
      AnimationStatusListener? listener) {
    final controller = AnimationController(
      vsync: this,
      duration: _kArrowJumpAnimationDuration,
    );
    listener = _animationListener(controller);
    controller.addStatusListener(listener);
    return controller;
  }

  AnimationStatusListener _animationListener(AnimationController controller,
      {bool forwardAnimationCompleted = false}) {
    return (AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        if (!forwardAnimationCompleted) {
          forwardAnimationCompleted = true;
          controller.reverse();
        }
      } else if (status == AnimationStatus.dismissed) {
        forwardAnimationCompleted = false;
      }
    };
  }

  void _onUpvoted(PostVoting voting) {
    if (!_upvoteController.isAnimating && voting.state is! UpvotedState) {
      _upvoteController.forward();
    }
    voting.upvote();
  }

  void _onDownvoted(PostVoting voting) {
    final voting = Provider.of<PostVoting>(context, listen: false);
    if (!_downArrowController.isAnimating && voting.state is! DownvotedState) {
      _downArrowController.forward();
    }
    voting.downvote();
  }

  @override
  Widget build(BuildContext context) {
    final voting = Provider.of<PostVoting>(context, listen: false);

    return Row(
      children: [
        Consumer<PostVoting>(
          builder: (context, value, child) {
            return PostAction(
              icon: SlideTransition(
                position: _upvoteSlideAnimation,
                child: FaIcon(
                  FontAwesomeIcons.arrowUp,
                  color: (value.state is UpvotedState)
                      ? _kUpvoteArrowColor
                      : _kArrowUnselectedColor,
                ),
              ),
              text: value.upvotes.toString(),
              textColor: (value.state is UpvotedState)
                  ? _kUpvoteArrowColor
                  : (value.state is DownvotedState)
                      ? _kDownvoteArrowColor
                      : _kArrowUnselectedColor,
              action: () => _onUpvoted(voting),
            );
          },
          // child:
        ),
        const SizedBox(width: 5),
        PostAction(
          icon: Consumer<PostVoting>(
            builder: (context, value, child) => SlideTransition(
              position: _downvoteSlideAnimation,
              child: FaIcon(
                FontAwesomeIcons.arrowDown,
                // Icons.arrow_downward_outlined,
                color: (value.state is DownvotedState)
                    ? _kDownvoteArrowColor
                    : _kArrowUnselectedColor,
              ),
            ),
          ),
          action: () => _onDownvoted(voting),
        ),
      ],
    );
  }
}
