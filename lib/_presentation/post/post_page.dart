import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../application/bloc_providers/post_comment_bloc_provider.dart';
import '../../application/post/post_comment/post_comment_bloc.dart';
import '../../application/post/post_content/post_content_bloc.dart';
import '../../domain/comment/comment_data.dart';
import '../../domain/post/post_entry.dart';
import '../../infastructure/core/cache_service.dart';
import '../../infastructure/post/post_service.dart';
import '../../injection.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/constants/assets.dart';
import '../core/constants/colors.dart';
import '../core/constants/ui.dart';
import '../core/reusable/app_header.dart';
import 'add_comment.dart';
import 'comment_placeholder.dart';
import 'comments.dart';
import 'make_post_widget.dart';
import 'widgets/post_action_bar.dart';

class PostPage extends StatefulWidget {
  final PostEntry post;
  const PostPage(
    this.post, {
    Key? key,
  }) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage>
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
    return PostCommentBlocProvider(
      postId: widget.post.id,
      child: Scaffold(
        appBar: AppBar(
          title: _FadingTitle(
            animationController: controller,
            post: widget.post,
          ),
          centerTitle: true,
          actions: actions,
        ),
        body: Column(
          children: [
            Expanded(
              child: _PostPageBody(
                animationController: controller,
                post: widget.post,
              ),
            ),
            AddComment(hintText: 'Add a comment')
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

class _PostPageBody extends StatelessWidget {
  static const scrollOffsetThreshold = 50;

  final AnimationController animationController;
  final PostEntry post;
  _PostPageBody({
    Key? key,
    required this.animationController,
    required this.post,
  }) : super(key: key);

  final _commentsScrollKey = GlobalKey();

  bool _onScrollUpdateNotification(ScrollUpdateNotification notification) {
    animationController.value =
        notification.metrics.pixels / scrollOffsetThreshold;
    return true;
  }

  Future<void> _scrollToComments() async {
    final context = _commentsScrollKey.currentContext!;
    Scrollable.ensureVisible(
      context,
      duration: Duration(
        milliseconds: 250,
      ),
    );
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
                child: makePostWidget(
                  post,
                  inSubreddit: false,
                  inPost: true,
                  onTapped: () {},
                ),
              ),
              SliverPinnedHeader(
                child: BlocProvider(
                  create: (context) => PostContentBloc(
                    postService: PostService(),
                    cacheService: getIt<CacheService>(),
                  )..add(PostContentEvent.metaDataFetchinStarted(post.id)),
                  child: _InPostActionBar(
                    post: post,
                    scrollToComments: _scrollToComments,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                key: _commentsScrollKey,
                child: CommentFilter(),
              ),
              BlocBuilder<PostCommentBloc, PostCommentState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) =>
                        CommentPlaceholderList(commentCount: post.commentCount),
                    loading: (_) =>
                        CommentPlaceholderList(commentCount: post.commentCount),
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
        mainAxisSize: MainAxisSize.min,
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

class _InPostActionBar extends StatelessWidget {
  final PostEntry post;
  final VoidCallback scrollToComments;
  const _InPostActionBar({
    Key? key,
    required this.scrollToComments,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: BlocBuilder<PostContentBloc, PostContentState>(
        builder: (context, state) {
          return state.maybeMap(
            fetched: (state) => PostActionBar(
              commentCount: state.commentCount,
              upvotes: state.upvotes,
              postId: post.id,
              onTapComments: scrollToComments,
            ),
            orElse: () => PostActionBar(
              commentCount: post.commentCount,
              postId: post.id,
              upvotes: post.upvotes,
              onTapComments: scrollToComments,
            ),
          );
        },
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
  static const maxCommentPlaceholderCount = 5;

  const CommentPlaceholderList({
    Key? key,
    required this.commentCount,
  }) : super(key: key);

  final int commentCount;

  get commentPlaceholderCount => commentCount <= maxCommentPlaceholderCount
      ? commentCount
      : maxCommentPlaceholderCount;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
          children: List.generate(
        commentPlaceholderCount,
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          Assets.redditFailure,
          width: 50,
        ),
      ),
    );
  }
}
