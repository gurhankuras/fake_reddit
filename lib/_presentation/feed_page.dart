import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/app_router.gr.dart';

import '../../../application/home_tab_page/feed_bloc.dart';
import '../../../domain/post/post_entry.dart';
import '../injection.dart';
import '../routes.dart';
import 'feed_scroll_view.dart';
import 'post/make_post_widget.dart';

class FeedBody extends StatefulWidget {
  final RefreshController? refreshController;
  final ScrollController? scrollController;

  const FeedBody({
    Key? key,
    this.refreshController,
    this.scrollController,
  }) : super(key: key);

  @override
  _FeedBodyState createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  late final RefreshController _refreshController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = widget.scrollController ?? ScrollController();
    _refreshController = widget.refreshController ?? RefreshController();
    super.initState();
  }

  @override
  void dispose() {
    if (widget.scrollController == null) {
      _scrollController.dispose();
    }
    if (widget.refreshController == null) {
      _refreshController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(context.read<FeedBloc>());
    // super.build(context);
    return MultiBlocListener(
      listeners: [
        loadListener(),
        refreshListener(),
      ],
      child: BlocBuilder<FeedBloc, FeedState>(
        buildWhen: (previous, current) =>
            previous.fetchingLoading != current.fetchingLoading,
        builder: (context, state) {
          if (state.fetchingLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return FeedScrollView(
            refreshController: _refreshController,
            scrollController: _scrollController,
            onRefresh: () =>
                context.read<FeedBloc>().add(FeedEvent.refreshRequested()),
            onLoading: () =>
                context.read<FeedBloc>().add(FeedEvent.loadMoreRequested()),
            slivers: [
              BlocBuilder<FeedBloc, FeedState>(
                builder: (context, state) {
                  return _FeedBodyPosts(posts: state.posts);
                },
              ),
            ],
          );
          // );
        },
      ),
    );
  }

  BlocListener<FeedBloc, FeedState> refreshListener() {
    return BlocListener<FeedBloc, FeedState>(
      listenWhen: (previous, current) =>
          previous.refreshLoading && !current.refreshLoading,
      listener: (context, state) {
        _refreshController.refreshCompleted();
        _refreshController.loadComplete();
      },
    );
  }

  BlocListener<FeedBloc, FeedState> loadListener() {
    return BlocListener<FeedBloc, FeedState>(
      listenWhen: (previous, current) =>
          (previous.morePostLoading && !current.morePostLoading),
      listener: (context, state) {
        state.hasReachedMax
            ? _refreshController.loadNoData()
            : _refreshController.loadComplete();
      },
    );
  }

  // @override
  // bool get wantKeepAlive => true;
}

class _FeedBodyPosts extends StatelessWidget {
  final List<PostEntry> posts;

  const _FeedBodyPosts({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final feedBloc = context.read<FeedBloc>();
    // print(posts.length);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return BlocProvider.value(
            value: feedBloc,
            child: makePostWidget(
              posts[index],
              inSubreddit: false,
              inPost: false,
              onTapped: () {
                print('FEEDPAGE POST CLICKED');

                getIt<AppRouter>().push(PostRoute(post: posts[index]));
                // Routes.singlePostPage,
                // arguments: {
                //   'post': posts[index],
                //   'comesFromFeedPage': true,
                // },
              },
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
