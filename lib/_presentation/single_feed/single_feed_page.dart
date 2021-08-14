import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/assets.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/_presentation/single_feed/comment_placeholder.dart';
import 'package:reddit_clone/application/single_feed/single_feed_bloc.dart';
import 'package:reddit_clone/infastructure/comment/fake_comment_service.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../domain/comment/comment_data.dart';
import '../core/app/feed_card.dart';
import '../core/constants.dart';
import '../core/reusable/app_header.dart';
import 'add_comment.dart';
import 'comments.dart';

class SingleFeedPage extends StatelessWidget {
  const SingleFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingleFeedBloc(
          commentService:
              FakeCommentService(depth: 3, engine: Random(), faker: Faker()))
        ..add(const SingleFeedEvent.commentsFetchingStarted()),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://preview.redd.it/yuaom7xz9xi11.jpg?width=1057&format=pjpg&auto=webp&s=dd60a5c152f0432340bfa2596927208a479170b4',
                  ),
                ),
              ),
              const AppHeader(
                'r/interestingasfuck',
                fontSizeFactor: 0.8,
                fontWeightDelta: 0,
              ),
            ],
          ),
          centerTitle: true,
          actions: actions,
        ),
        body: Column(
          children: [
            const Expanded(
              child: SingleFeedScrollBody(),
            ),
            AddComment()
          ],
        ),
      ),
    );
  }

  List<Widget> get actions => [
        GestureDetector(
          onTap: () => print(''),
          child: const Icon(
            Icons.flag,
          ),
        ),
        const Icon(
          Icons.more_horiz,
        ),
      ];
}

class SingleFeedScrollBody extends StatefulWidget {
  const SingleFeedScrollBody({
    Key? key,
  }) : super(key: key);

  @override
  _SingleFeedScrollBodyState createState() => _SingleFeedScrollBodyState();
}

class _SingleFeedScrollBodyState extends State<SingleFeedScrollBody> {
  // late final ScrollController _scrollController;
  // @override
  // void initState() {

  // }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: [GestureType.onTap, GestureType.onVerticalDragDown],
      child: Scrollbar(
        // controller: _scrollController,
        child: CustomScrollView(
          physics: UIConstants.physics,
          slivers: [
            // const _SingleFeedAppBar(),
            const SliverToBoxAdapter(child: FeedCard()),
            SliverToBoxAdapter(child: CommentFilter()),
            BlocBuilder<SingleFeedBloc, SingleFeedState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const CommentPlaceholderList(),
                  loading: (_) => const CommentPlaceholderList(),
                  fetchingCompleted: (state) =>
                      CommentsSection(comments: state.comments),
                  fetchingFailed: (value) => const FailureImage(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class _SingleFeedAppBar extends StatelessWidget {
//   const _SingleFeedAppBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         title: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 20,
//               child: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   'https://preview.redd.it/yuaom7xz9xi11.jpg?width=1057&format=pjpg&auto=webp&s=dd60a5c152f0432340bfa2596927208a479170b4',
//                 ),
//               ),
//             ),
//             const AppHeader(
//               'r/interestingasfuck',
//               fontSizeFactor: 0.8,
//               fontWeightDelta: 0,
//             ),
//           ],
//         ),
//         centerTitle: true,
//       ),
//       actions: actions,
//     );
//   }

//   List<Widget> get actions => [
//         GestureDetector(
//           onTap: () => print(''),
//           child: const Icon(
//             Icons.flag,
//           ),
//         ),
//         const Icon(
//           Icons.more_horiz,
//         ),
//       ];
// }

class CommentFilter extends StatelessWidget {
  const CommentFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.rocket,
          color: AppColors.moreLightGrey,
          size: 20,
        ),
        const SizedBox(width: 6),
        const AppHeader(
          'BEST COMMENTS',
          fontSizeFactor: 0.55,
          color: AppColors.lightGrey,
        ),
        const Icon(
          Icons.expand_more,
          color: AppColors.moreLightGrey,
          size: 20,
        ),
      ],
    );
  }
}

class CommentPlaceholderList extends StatelessWidget {
  const CommentPlaceholderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
          children: List.generate(
        5,
        (index) => const CommentPlaceHolder(),
      )),
    );
  }
}

class CommentsSection extends StatelessWidget {
  final List<CommentData> comments;
  const CommentsSection({
    Key? key,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => Comment(comment: comments[index]),
        childCount: comments.length,
      ),
    );
  }
}

class FailureImage extends StatelessWidget {
  const FailureImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            Assets.redditFailure,
            width: 50,
          ),
        ),
      ),
    );
  }
}
