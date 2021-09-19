import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../core/constants/colors.dart';
import 'post_action_bar.dart';
import '../../../application/voting/bloc/vote_bloc.dart';

// import '../../../application/voting/post_voting.dart';
// import '../../../domain/post/post_entry.dart';
// import '../../core/constants/colors.dart';
// import 'post_card.dart';

typedef AnimationStatusListener = void Function(AnimationStatus status);

class UpvoteButton extends StatefulWidget {
  const UpvoteButton({
    Key? key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<VoteBloc, VoteState>(
          builder: (context, state) {
            return PostAction(
              icon: SlideTransition(
                position: _upvoteSlideAnimation,
                child: upvoteIcon(state),
              ),
              text: state.upvotes.toString(),
              textColor: textColor(state),
              action: _onUpvoted,
            );
          },
        ),
        const SizedBox(width: 5),
        PostAction(
          icon: downvoteIcon(),
          action: _onDownvoted,
        ),
      ],
    );
  }

  FaIcon upvoteIcon(VoteState state) {
    return FaIcon(
      FontAwesomeIcons.arrowUp,
      color: upvoteArrowColor(state),
    );
  }

  SlideTransition downvoteIcon() {
    return SlideTransition(
      position: _downvoteSlideAnimation,
      child: BlocBuilder<VoteBloc, VoteState>(
        builder: (context, state) {
          return FaIcon(
            FontAwesomeIcons.arrowDown,
            color: downvoteArrowColor(state),
          );
        },
      ),
    );
  }

  Color textColor(VoteState state) => state.map(
        upvoted: (_) => _kUpvoteArrowColor,
        downvoted: (_) => _kDownvoteArrowColor,
        unvoted: (_) => _kArrowUnselectedColor,
      );

  Color upvoteArrowColor(VoteState state) => state.maybeMap(
        upvoted: (_) => _kUpvoteArrowColor,
        orElse: () => _kArrowUnselectedColor,
      );
  Color downvoteArrowColor(VoteState state) => state.maybeMap(
        downvoted: (_) => _kDownvoteArrowColor,
        orElse: () => _kArrowUnselectedColor,
      );

  void _onUpvoted() {
    final voteBloc = context.read<VoteBloc>();
    voteBloc.state.maybeMap(
      upvoted: (s) {},
      orElse: () {
        if (!_upvoteController.isAnimating) {
          _upvoteController.forward();
        }
      },
    );
    voteBloc.add(VoteEvent.upvoted());
  }

  void _onDownvoted() {
    final voteBloc = context.read<VoteBloc>();
    voteBloc.state.maybeMap(
      downvoted: (s) {},
      orElse: () {
        if (!_downArrowController.isAnimating) {
          _downArrowController.forward();
        }
      },
    );
    voteBloc.add(VoteEvent.downvoted());
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:reddit_clone/_presentation/core/constants/colors.dart';
// import 'package:reddit_clone/_presentation/post/widgets/post_action_bar.dart';
// import 'package:reddit_clone/application/voting/post_voting.dart';

// typedef AnimationStatusListener = void Function(AnimationStatus status);

// class UpvoteButton extends StatefulWidget {
//   const UpvoteButton({
//     Key? key,
//     // required this.entry,
//   }) : super(key: key);

//   // final PostEntry entry;

//   @override
//   _UpvoteButtonState createState() => _UpvoteButtonState();
// }

// const _kUpvoteArrowColor = Colors.red;
// const _kDownvoteArrowColor = AppColors.jordyBlue;
// const _kArrowUnselectedColor = AppColors.iron;
// const _kArrowJumpAnimationDuration = Duration(milliseconds: 150);
// const _kArrowJumpAnimationCurve = Curves.easeInOut;

// class _UpvoteButtonState extends State<UpvoteButton>
//     with TickerProviderStateMixin {
//   late final AnimationController _upvoteController;
//   late final AnimationController _downArrowController;

//   late final Animation<Offset> _upvoteSlideAnimation;
//   late final Animation<Offset> _downvoteSlideAnimation;

//   AnimationStatusListener? _upvoteAnimationStatusListener;
//   AnimationStatusListener? _downvoteAnimationStatusListener;

//   @override
//   void initState() {
//     super.initState();
//     _setUpAnimations();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     if (_upvoteAnimationStatusListener != null) {
//       _upvoteController.removeStatusListener(_upvoteAnimationStatusListener!);
//     }
//     if (_downvoteAnimationStatusListener != null) {
//       _downArrowController
//           .removeStatusListener(_downvoteAnimationStatusListener!);
//     }
//     _upvoteController.dispose();
//     _downArrowController.dispose();
//   }

//   void _setUpAnimations() {
//     _upvoteController =
//         _createAnimationController(_upvoteAnimationStatusListener);
//     _downArrowController =
//         _createAnimationController(_downvoteAnimationStatusListener);

//     final curvedAnimation = CurvedAnimation(
//       parent: _upvoteController,
//       curve: _kArrowJumpAnimationCurve,
//     );
//     final downvoteCurvedAnimation = CurvedAnimation(
//       parent: _downArrowController,
//       curve: _kArrowJumpAnimationCurve,
//     );
//     _upvoteSlideAnimation =
//         Tween<Offset>(begin: Offset.zero, end: Offset(0, -1))
//             .animate(curvedAnimation);
//     _downvoteSlideAnimation =
//         Tween<Offset>(begin: Offset.zero, end: Offset(0, 1))
//             .animate(downvoteCurvedAnimation);
//   }

//   AnimationController _createAnimationController(
//       AnimationStatusListener? listener) {
//     final controller = AnimationController(
//       vsync: this,
//       duration: _kArrowJumpAnimationDuration,
//     );
//     listener = _animationListener(controller);
//     controller.addStatusListener(listener);
//     return controller;
//   }

//   AnimationStatusListener _animationListener(AnimationController controller,
//       {bool forwardAnimationCompleted = false}) {
//     return (AnimationStatus status) {
//       if (status == AnimationStatus.completed) {
//         if (!forwardAnimationCompleted) {
//           forwardAnimationCompleted = true;
//           controller.reverse();
//         }
//       } else if (status == AnimationStatus.dismissed) {
//         forwardAnimationCompleted = false;
//       }
//     };
//   }

//   void _onUpvoted(PostVoting voting) {
//     if (!_upvoteController.isAnimating && voting.state is! UpvotedState) {
//       _upvoteController.forward();
//     }
//     voting.upvote();
//   }

//   void _onDownvoted(PostVoting voting) {
//     final voting = Provider.of<PostVoting>(context, listen: false);
//     if (!_downArrowController.isAnimating && voting.state is! DownvotedState) {
//       _downArrowController.forward();
//     }
//     voting.downvote();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final voting = Provider.of<PostVoting>(context, listen: false);

//     return Row(
//       children: [
//         Consumer<PostVoting>(
//           builder: (context, value, child) {
//             return PostAction(
//               icon: SlideTransition(
//                 position: _upvoteSlideAnimation,
//                 child: FaIcon(
//                   FontAwesomeIcons.arrowUp,
//                   color: (value.state is UpvotedState)
//                       ? _kUpvoteArrowColor
//                       : _kArrowUnselectedColor,
//                 ),
//               ),
//               text: value.upvotes.toString(),
//               textColor: (value.state is UpvotedState)
//                   ? _kUpvoteArrowColor
//                   : (value.state is DownvotedState)
//                       ? _kDownvoteArrowColor
//                       : _kArrowUnselectedColor,
//               action: () => _onUpvoted(voting),
//             );
//           },
//           // child:
//         ),
//         const SizedBox(width: 5),
//         PostAction(
//           icon: Consumer<PostVoting>(
//             builder: (context, value, child) => SlideTransition(
//               position: _downvoteSlideAnimation,
//               child: FaIcon(
//                 FontAwesomeIcons.arrowDown,
//                 // Icons.arrow_downward_outlined,
//                 color: (value.state is DownvotedState)
//                     ? _kDownvoteArrowColor
//                     : _kArrowUnselectedColor,
//               ),
//             ),
//           ),
//           action: () => _onDownvoted(voting),
//         ),
//       ],
//     );
//   }
// }
