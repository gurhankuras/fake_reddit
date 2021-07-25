import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/app/extensions/string_fill_extension.dart';
import 'package:reddit_clone/_presentation/core/reusable/filled_circle_icon.dart';
import 'package:reddit_clone/_presentation/post_feed/link_feed_edit.dart';
import 'package:reddit_clone/_presentation/post_feed/poll_feed_edit.dart';
import 'package:reddit_clone/_presentation/post_feed/text_feed_edit.dart';
import 'package:reddit_clone/application/create_feed/bloc/create_feed_bloc.dart';

import '../../../domain/community.dart';
import '../../../routes.dart';

class CreateFeedEntryPage extends StatelessWidget {
  final Community community;

  const CreateFeedEntryPage({Key? key, required this.community})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateFeedBloc(),
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(
            onPressed: () {
              Navigator.of(context)
                  .popUntil((route) => route.settings.name == Routes.mainPage);
            },
          ),
          actions: [
            Center(
              child: GestureDetector(
                onLongPressEnd: (_) => Navigator.of(context).pop(),
                onTap: () => Navigator.of(context).pop(),
                child: Text(
                  'Next',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: AppColors.moreLightGrey),
                ),
              ),
            )
          ],
        ),
        body: Container(
          color: AppColors.lightBlack,
          child: Column(
            children: [
              ChangeCommunityBar(community: community),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    slivers: [
                      BlocBuilder<CreateFeedBloc, CreateFeedState>(
                        buildWhen: (previous, current) =>
                            previous.feedType != current.feedType,
                        builder: (context, state) {
                          return SliverToBoxAdapter(
                            child: state.maybeMap(
                              textFeedEntry: (state) => TextFeedEdit(
                                title: state.title,
                                bodyText: state.bodyText,
                                autofocus: state.autofocus,
                              ),
                              linkFeedEntry: (state) => LinkFeedEdit(
                                title: state.title,
                                autofocus: state.autofocus,
                              ),
                              pollFeedEntry: (state) => PollFeedEdit(
                                title: state.title,
                                bodyText: state.bodyText,
                                autofocus: state.autofocus,
                              ),
                              orElse: () => const Text('HAHAHAHA'),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                FeedEntryOptions(feedTypes: feedTypes),
              if (MediaQuery.of(context).viewInsets.bottom != 0)
                MinimizedFeedEntryOptions(feedTypes: feedTypes)
            ],
          ),
        ),
      ),
    );
  }

  List<FeedType> get feedTypes => [
        FeedType(icon: Icons.text_fields, text: 'Text'),
        FeedType(icon: Icons.link, text: 'Link'),
        FeedType(icon: Icons.image_outlined, text: 'Image'),
        FeedType(icon: Icons.play_circle_outline, text: 'Video'),
        FeedType(icon: Icons.format_list_numbered_outlined, text: 'Poll'),
      ];
}

class MinimizedFeedEntryOptions extends StatelessWidget {
  final List<FeedType> feedTypes;

  const MinimizedFeedEntryOptions({
    Key? key,
    required this.feedTypes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightBlack,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: MinimizedOptions(feedTypes: feedTypes),
              ),
            ),
            // Spacer(),
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Icon(Icons.expand_more),
            )
          ],
        ),
      ),
    );
  }
}

class MinimizedOptions extends StatelessWidget {
  const MinimizedOptions({
    Key? key,
    required this.feedTypes,
  }) : super(key: key);

  final List<FeedType> feedTypes;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFeedBloc, CreateFeedState>(
      buildWhen: (previous, current) => previous.feedType != current.feedType,
      builder: (context, state) {
        return Row(
          children: List.generate(
            feedTypes.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () => context.read<CreateFeedBloc>().add(
                      CreateFeedEvent.feedTypeChanged(index, true),
                    ),
                child: FilledCircleIcon(
                  selected: index == state.feedType.index,
                  padding: EdgeInsets.all(5),
                  icon: Icon(
                    feedTypes[index].icon,
                    size: 18,
                  ),
                  selectedColor: Colors.blue[700]!,
                  unselectedColor: Colors.transparent,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class FeedEntryOptions extends StatelessWidget {
  final List<FeedType> feedTypes;

  const FeedEntryOptions({Key? key, required this.feedTypes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.lightBlack2,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: BlocBuilder<CreateFeedBloc, CreateFeedState>(
          builder: (context, state) {
            return Wrap(
              runSpacing: 10, // satirlar arasi
              spacing: 60,
              children: List.generate(
                feedTypes.length,
                (index) => FeedTypeButton(
                    feedType: feedTypes[index],
                    index: index,
                    selected: index ==
                        state.map(
                          textFeedEntry: (_) => 0,
                          linkFeedEntry: (_) => 1,
                          imageFeedEntry: (_) => 2,
                          videoFeedEntry: (_) => 3,
                          pollFeedEntry: (_) => 4,
                        ),
                    onTap: (index) => context
                        .read<CreateFeedBloc>()
                        .add(CreateFeedEvent.feedTypeChanged(index, false))),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FeedType {
  final IconData icon;
  final String text;

  FeedType({
    required this.icon,
    required this.text,
  });
}

class FeedTypeButton extends StatelessWidget {
  final FeedType feedType;
  final int index;
  final bool selected;
  final Function(int index) onTap;
  final bool hasTitle;

  const FeedTypeButton({
    Key? key,
    required this.feedType,
    required this.index,
    required this.selected,
    required this.onTap,
    this.hasTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        children: [
          FilledCircleIcon(
            selected: selected,
            icon: Icon(feedType.icon),
            selectedColor: Colors.blue[700]!,
            unselectedColor: Colors.transparent,
          ),
          if (hasTitle) SizedBox(height: 5),
          if (hasTitle)
            Text(
              feedType.text,
              style: Theme.of(context).textTheme.caption?.copyWith(
                  color: selected ? Colors.blue[700] : AppColors.iron),
            )
        ],
      ),
    );
  }
}

class ChangeCommunityBar extends StatelessWidget {
  const ChangeCommunityBar({
    Key? key,
    required this.community,
  }) : super(key: key);

  final Community community;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => print('tap tap'),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(community.image)),
                SizedBox(width: 10),
                Text(community.name.toSubreddit),
                const Icon(Icons.expand_more)
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text('RULES'),
          )
        ],
      ),
    );
  }
}
