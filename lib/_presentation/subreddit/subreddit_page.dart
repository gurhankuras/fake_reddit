import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/core/button/circle_bordered_icon_button.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';

import '../../application/subreddit/subreddit_bloc.dart';
import '../../domain/subreddit/subreddit_info.dart';
import '../../utility/mock_objects.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/app/search_bar_field.dart';
import '../core/constants/colors.dart';
import '../core/reusable/app_header.dart';
import '../core/size_config.dart';
import '../post_widget_factory.dart';
import '../single_feed/single_feed_page.dart';

const _kAnimationEndScrollHeight = 20;

class SubredditPage extends StatefulWidget {
  const SubredditPage({Key? key}) : super(key: key);

  @override
  _SubredditPageState createState() => _SubredditPageState();
}

class _SubredditPageState extends State<SubredditPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> opacityAnimation;
  final IPostWidgetFactory postFactory = PostWidgetFactory();

  @override
  void initState() {
    super.initState();
    setUpAnimations();
  }

  void setUpAnimations() {
    animationController = AnimationController(vsync: this);
    opacityAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(animationController);
  }

  bool _onScrolled(ScrollUpdateNotification notification) {
    animationController.value =
        notification.metrics.pixels / _kAnimationEndScrollHeight;
    return true;
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: _onScrolled,
        child: CustomScrollView(
          slivers: [
            _SubredditAppBar(opacityAnimation: opacityAnimation),
            BlocBuilder<SubredditBloc, SubredditState>(
              buildWhen: (previous, current) =>
                  previous.subredditInfo != current.subredditInfo ||
                  previous.subredditInfoLoading != current.subredditInfoLoading,
              builder: _subredditHeadBuilder,
            ),
            BlocBuilder<SubredditBloc, SubredditState>(
              buildWhen: (previous, current) =>
                  previous.posts != current.posts ||
                  previous.postsLoading != current.postsLoading,
              builder: _subredditPostsBuilder,
            )
          ],
        ),
      ),
    );
  }

  Widget _subredditPostsBuilder(BuildContext context, SubredditState state) {
    if (state.postsLoading) {
      return SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return state.posts.fold(
      () => FailureImage(),
      (posts) => _SubredditPosts(postFactory: postFactory, posts: posts),
    );
  }

  Widget _subredditHeadBuilder(BuildContext context, SubredditState state) {
    if (state.subredditInfoLoading) {
      return SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }
    return state.subredditInfo.fold(
      () => SliverToBoxAdapter(child: Text('Bir hata oldu')),
      (info) => SliverToBoxAdapter(child: SubredditHead(subredditInfo: info)),
    );
  }
}

class _SubredditPosts extends StatelessWidget {
  final List<PostEntry> posts;
  const _SubredditPosts({
    Key? key,
    required this.posts,
    required this.postFactory,
  }) : super(key: key);

  final IPostWidgetFactory postFactory;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return postFactory.create(
            posts[index],
            options: PostWidgetFactoryOptions(inSubreddit: true, inPost: false),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class _SubredditAppBar extends StatelessWidget {
  const _SubredditAppBar({
    Key? key,
    required this.opacityAnimation,
  }) : super(key: key);

  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      title: BlocBuilder<SubredditBloc, SubredditState>(
        builder: (context, state) {
          return SearchBarField(hintText: 'r/berserklejerk');
        },
      ),
      expandedHeight: 120,
      flexibleSpace:
          SubredditFlexibleSpaceBar(opacityAnimation: opacityAnimation),
      actions: [
        AppBarActionButton(icon: Icons.share),
        AppBarActionButton(icon: Icons.more_horiz),
      ],
    );
  }
}

class SubredditHead extends StatelessWidget {
  final SubredditInfo subredditInfo;
  const SubredditHead({
    Key? key,
    required this.subredditInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              AppHeaderText(
                subredditInfo.name.toSubreddit,
                fontSizeFactor: 0.85,
                fontWeightDelta: 0,
              ),
              Spacer(),
              const CircleBorderedIconButton(),
              SizedBox(width: SizeConfig.screenWidthPercentage(2)),
              _JoinButton()
            ],
          ),
          SubredditMemberStatistics(
            memberCount: subredditInfo.memberCount,
            onlineCount: subredditInfo.onlineCount,
          ),
          SizedBox(height: SizeConfig.screenHeightPercentage(1)),
          SubredditDescription(subredditInfo.description)
        ],
      ),
    );
  }
}

// TODO genellestir
class _JoinButton extends StatelessWidget {
  const _JoinButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Joined',
        style: Theme.of(context).textTheme.bodyText1?.apply(
              color: Colors.red,
            ),
      ),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        side: const BorderSide(color: Colors.red),
        shape: const StadiumBorder(),
      ),
    );
  }
}

class SubredditDescription extends StatelessWidget {
  final String description;
  const SubredditDescription(
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppHeaderText(
            description,
            fontSizeFactor: 0.68,
            fontWeightDelta: -1,
          ),
        ),
      ],
    );
  }
}

class SubredditMemberStatistics extends StatelessWidget {
  final int memberCount;
  final int onlineCount;

  const SubredditMemberStatistics({
    Key? key,
    required this.memberCount,
    required this.onlineCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppHeaderText(
            '$memberCount Sacrifices • $onlineCount With Grasses on',
            color: AppColors.moreLightGrey,
            fontSizeFactor: 0.65,
            fontWeightDelta: -1,
          ),
        ),
      ],
    );
  }
}

class AppBarActionButton extends StatelessWidget {
  final IconData icon;
  const AppBarActionButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon),
    );
  }
}

class SubredditFlexibleSpaceBar extends StatelessWidget {
  final Animation<double> opacityAnimation;
  const SubredditFlexibleSpaceBar({
    Key? key,
    required this.opacityAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://styles.redditmedia.com/t5_398od/styles/bannerBackgroundImage_0ahx0fsatg911.png?width=4000&s=1bd3c581711abf5b8e6cdc00af23a0f67b3bd677',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 0,
            child: FadeTransition(
              opacity: opacityAnimation,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5),
                  shape: BoxShape.circle,
                ),
                // borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://a.thumbs.redditmedia.com/pyzElnY8TtvOdyM57dfXY9P8gXpyZanHb2TM0Sskrm0.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
