import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/create_feed_bloc.dart';
import '../../../domain/community.dart';
import '../../../routes.dart';
import '../../../utility/app_logger.dart';
import '../../core/app/colors.dart';
import '../../core/app/extensions/string_fill_extension.dart';
import '../../core/size_config.dart';
import 'widgets/editor/feed_editor.dart';
import 'widgets/feed_types_sections.dart';
import 'widgets/minimized_feed_types_bar.dart';

class CreateFeedEntryPage extends StatelessWidget {
  final Community community;

  const CreateFeedEntryPage({Key? key, required this.community})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final feedTypeBar = SizeConfig.isKeyboardHidden(context)
        ? FeedTypesSection(feedTypes: feedTypes)
        : MinimizedFeedTypesBar(feedTypes: feedTypes);

    log.d('CreateFeedEntryPage builds');
    return BlocProvider<CreateFeedBloc>(
      create: (context) => CreateFeedBloc(),
      child: Scaffold(
        appBar: appBar(context),
        body: Container(
          color: AppColors.lightBlack,
          child: Column(
            children: [
              ChangeCommunityBar(community: community),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FeedEditor(),
                ),
              ),
              feedTypeBar
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: CloseButton(
        onPressed: () {
          Navigator.of(context)
              .popUntil((route) => route.settings.name == Routes.mainPage);
        },
      ),
      actions: actions(context),
    );
  }

  List<Widget> actions(BuildContext context) => [
        Center(
          child: GestureDetector(
            onLongPressEnd: (_) => Navigator.of(context).pop(),
            onTap: () => Navigator.of(context).pop(),
            child: BlocBuilder<CreateFeedBloc, CreateFeedState>(
              builder: (context, state) {
                final canProceed = context.watch<CreateFeedBloc>().canProceed();
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: canProceed ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Next',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: canProceed
                            ? Colors.white
                            : AppColors.moreLightGrey),
                  ),
                );
              },
            ),
          ),
        )
      ];

  List<FeedType> get feedTypes => [
        FeedType(icon: Icons.text_fields, text: 'Text'),
        FeedType(icon: Icons.link, text: 'Link'),
        FeedType(icon: Icons.image_outlined, text: 'Image'),
        FeedType(icon: Icons.play_circle_outline, text: 'Video'),
        FeedType(icon: Icons.format_list_numbered_outlined, text: 'Poll'),
      ];
}

class FeedType {
  final IconData icon;
  final String text;

  FeedType({
    required this.icon,
    required this.text,
  });
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
                const SizedBox(width: 10),
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
