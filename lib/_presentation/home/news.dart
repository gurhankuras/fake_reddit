import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../application/home_tab_page/feed_bloc.dart';
import '../post_widget_factory.dart';
import '../../domain/post/post_entry.dart';
import '../core/scroll_controllers.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with AutomaticKeepAliveClientMixin {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  late final ScrollController _scrollController;

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  int currentIndex = 0;

  void scrollToNextPost() {
    currentIndex += 1;
    itemScrollController.scrollTo(
      index: currentIndex,
      duration: Duration(milliseconds: 200),
    );
  }

  @override
  void initState() {
    final scrollControllers = context.read<ScrollControllers>();

    if (context.read<ScrollControllers>().newsScrollController == null) {
      scrollControllers.initNews();
    }
    _scrollController = context.read<ScrollControllers>().newsScrollController!;
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            header: ClassicHeader(
              refreshingText: '',
              idleText: '',
              releaseText: '',
              completeText: '',
              completeIcon: null,
              completeDuration: Duration.zero,
              releaseIcon: null,
            ),
            footer: refresherFooter(),
            controller: _refreshController,
            onRefresh: () =>
                context.read<FeedBloc>().add(FeedEvent.refreshRequested()),
            onLoading: () =>
                context.read<FeedBloc>().add(FeedEvent.loadMoreRequested()),
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                BlocBuilder<FeedBloc, FeedState>(
                  // buildWhen: (previous, current) =>
                  //     previous.posts != current.posts,
                  builder: (context, state) {
                    return _NewsPosts(
                      posts: state.posts,
                      itemScrollController: itemScrollController,
                      refreshController: _refreshController,
                    );
                  },
                ),
              ],
            ),
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

  CustomFooter refresherFooter() {
    return CustomFooter(
      builder: (context, mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = Text("pull up load");
        } else if (mode == LoadStatus.loading) {
          body = CircularProgressIndicator();
        } else if (mode == LoadStatus.failed) {
          body = Text("Load Failed!Click retry!");
        } else if (mode == LoadStatus.canLoading) {
          body = Text("release to load more");
        } else {
          body = Text("No more Data");
        }
        return Container(
          height: 35.0,
          child: Center(child: body),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _NewsPosts extends StatelessWidget {
  final List<PostEntry> posts;

  final ItemScrollController itemScrollController;
  final RefreshController refreshController;

  const _NewsPosts({
    Key? key,
    required this.posts,
    required this.itemScrollController,
    required this.refreshController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IPostWidgetFactory postFactory = PostWidgetFactory();
    final feedBloc = context.read<FeedBloc>();
    // print(posts.length);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return BlocProvider.value(
            value: feedBloc,
            child: postFactory.create(
              posts[index],
              options: PostWidgetFactoryOptions(
                inSubreddit: false,
                inPost: false,
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
