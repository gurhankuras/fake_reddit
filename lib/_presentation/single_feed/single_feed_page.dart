import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../application/single_feed/single_feed_bloc.dart';
import '../../domain/comment/comment_data.dart';
import '../../domain/feed/post_widget_factory.dart';
import '../../domain/post_entry.dart';
import '../../infastructure/comment/fake_comment_service.dart';
import '../core/app/colors.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/app/feed_card.dart';
import '../core/assets.dart';
import '../core/constants.dart';
import '../core/reusable/app_header.dart';
import 'add_comment.dart';
import 'comment_placeholder.dart';
import 'comments.dart';

class SingleFeedPage extends StatefulWidget {
  final IPostWidgetFactory postFactory = PostWidgetFactory();
  final PostEntry entry;
  SingleFeedPage(
    this.entry, {
    Key? key,
  }) : super(key: key);

  @override
  _SingleFeedPageState createState() => _SingleFeedPageState();
}

class _SingleFeedPageState extends State<SingleFeedPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingleFeedBloc(
          commentService:
              FakeCommentService(depth: 3, engine: Random(), faker: Faker()))
        ..add(const SingleFeedEvent.commentsFetchingStarted()),
      child: Scaffold(
        appBar: AppBar(
          title:
              _FadingTitle(animationController: controller, post: widget.entry),
          centerTitle: true,
          actions: actions,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleFeedScrollBody(
                animationController: controller,
                postFactory: widget.postFactory,
                post: widget.entry,
              ),
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

class _FadingTitle extends StatelessWidget {
  const _FadingTitle({
    Key? key,
    required this.animationController,
    required this.post,
  }) : super(key: key);

  final AnimationController animationController;
  final PostEntry post;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://preview.redd.it/yuaom7xz9xi11.jpg?width=1057&format=pjpg&auto=webp&s=dd60a5c152f0432340bfa2596927208a479170b4',
              ),
            ),
          ),
          AppHeaderText(
            post.subreddit.toSubreddit,
            fontSizeFactor: 0.8,
            fontWeightDelta: 0,
          ),
        ],
      ),
    );
  }
}

class SingleFeedScrollBody extends StatelessWidget {
  final IPostWidgetFactory postFactory;
  final AnimationController animationController;
  final PostEntry post;
  SingleFeedScrollBody({
    Key? key,
    required this.postFactory,
    required this.animationController,
    required this.post,
  }) : super(key: key);

  final _commentsKey = GlobalKey();

  bool _onScrollUpdateNotification(ScrollUpdateNotification notification) {
    animationController.value = notification.metrics.pixels / 50;
    return true;
  }

  Future<void> _scrollToComments() async {
    final context = _commentsKey.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: Duration(
          milliseconds: 250,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: _onScrollUpdateNotification,
      child: KeyboardDismisser(
        gestures: [GestureType.onTap, GestureType.onVerticalDragDown],
        child: Scrollbar(
          child: CustomScrollView(
            physics: UIConstants.physics,
            slivers: [
              SliverToBoxAdapter(
                child: postFactory.create(
                  post,
                  options: PostWidgetFactoryOptions(
                    inSubreddit: false,
                    inPost: true,
                  ),
                ),
              ),
              SliverPinnedHeader(
                child: _InPostActionBar(
                  post: post,
                  scrollToComments: _scrollToComments,
                ),
              ),
              SliverToBoxAdapter(
                key: _commentsKey,
                child: GestureDetector(
                  onTap: () => _scrollToComments(),
                  child: CommentFilter(),
                ),
              ),
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
      ),
    );
  }
}

class _InPostActionBar extends StatelessWidget {
  final VoidCallback scrollToComments;
  const _InPostActionBar({
    Key? key,
    required this.scrollToComments,
    required this.post,
  }) : super(key: key);

  final PostEntry post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: PostActionBar(
        entry: post,
        onTapComments: scrollToComments,
      ),
    );
  }
}

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
        const AppHeaderText(
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
