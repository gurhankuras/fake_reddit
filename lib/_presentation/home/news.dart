import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/_presentation/core/scroll_controllers.dart';

import 'package:reddit_clone/application/home_tab_page/home_tab_page_bloc.dart';
import 'package:reddit_clone/domain/feed_entry.dart';

import '../core/app/feed_card.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with AutomaticKeepAliveClientMixin {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  late final ScrollController _scrollController;

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
        BlocListener<HomeTabPageBloc, HomeTabPageState>(
          listenWhen: (previous, current) =>
              (previous.morePostLoading && !current.morePostLoading),
          listener: (context, state) {
            state.hasReachedMax
                ? _refreshController.loadNoData()
                : _refreshController.loadComplete();
          },
        ),
        BlocListener<HomeTabPageBloc, HomeTabPageState>(
          listenWhen: (previous, current) =>
              previous.refreshLoading && !current.refreshLoading,
          listener: (context, state) {
            _refreshController.refreshCompleted();
            _refreshController.loadComplete();
          },
        )
      ],
      child: BlocBuilder<HomeTabPageBloc, HomeTabPageState>(
        buildWhen: (previous, current) =>
            previous.fetchingLoading != current.fetchingLoading,
        builder: (context, state) {
          if (state.fetchingLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scrollbar(
            child: SmartRefresher(
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

                // refreshingIcon: ,
                // idleIcon: null,
              ),
              footer: CustomFooter(
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
              ),
              controller: _refreshController,
              onRefresh: () => context
                  .read<HomeTabPageBloc>()
                  .add(HomeTabPageEvent.refreshRequested()),
              onLoading: () => context
                  .read<HomeTabPageBloc>()
                  .add(HomeTabPageEvent.loadMoreRequested()),
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  BlocBuilder<HomeTabPageBloc, HomeTabPageState>(
                    // buildWhen: (previous, current) =>
                    //     previous.posts != current.posts,
                    builder: (context, state) {
                      return _NewsPosts(posts: state.posts);
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _NewsPosts extends StatelessWidget {
  final List<PostEntry> posts;
  const _NewsPosts({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return PostCard(
            inPost: false,
            entry: posts[index],
            inSubreddit: false,
            // postType: 2,
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
