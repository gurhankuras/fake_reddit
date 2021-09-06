import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../feed_form/create_feed_entry_page.dart';
import 'content_preview.dart';
import '../../application/bloc/create_feed_bloc.dart';
import '../../domain/subreddit/subreddit_info.dart';
import '../../routes.dart';

import '../core/constants/colors.dart';
import '../core/reusable/base_app_action_chip.dart';
import '../core/size_config.dart';

class CreateFeedEntryOverviewPage extends StatelessWidget {
  final SubredditInfo community;
  const CreateFeedEntryOverviewPage({
    Key? key,
    required this.community,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: actions(context)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChangeCommunityBar(community: community),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: BlocBuilder<CreateFeedBloc, CreateFeedState>(
              builder: (context, state) {
                return state.map(
                  textFeedEntry: (state) => ContentPreview(
                      title: state.title, subtitle: state.bodyText),
                  linkFeedEntry: (state) => ContentPreview.link(
                      title: state.title, subtitle: state.url),
                  imageFeedEntry: (state) => ContentPreview.image(
                    title: state.title,
                    multipleImage: state.images.length > 1,
                    subtitle: '',
                    imageProvider: MemoryImage(
                      state.images.first.image.readAsBytesSync(),
                    ),
                  ),
                  videoFeedEntry: (state) => ContentPreview.image(
                    title: state.title,
                    multipleImage: false,
                    subtitle: '',
                    imageProvider: const NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_7CjELfwbm4JZicE6dMnDhI-Tt397j5YQ5g&usqp=CAU'),
                  ),
                  pollFeedEntry: (state) => ContentPreview.poll(
                    title: state.title,
                    subtitle: state.bodyText,
                  ),
                );
              },
            ),
          ),
          const Tags(),
          const Divider(
            color: AppColors.mmoreLightGrey,
            thickness: 0.3,
            height: 20,
          ),
          MakeChatPostSwitchTile(),
          const Divider(
            color: AppColors.mmoreLightGrey,
            thickness: 0.3,
            height: 20,
          ),
        ],
      ),
    );
  }

  List<Widget> actions(BuildContext context) => [
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).popUntil(
                  (route) => route.settings.name == Routes.bottomNavPage);
              context.read<CreateFeedBloc>().add(CreateFeedEvent.feedPosted());
            },
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
}

class MakeChatPostSwitchTile extends StatefulWidget {
  const MakeChatPostSwitchTile({
    Key? key,
  }) : super(key: key);

  @override
  _MakeChatPostSwitchTileState createState() => _MakeChatPostSwitchTileState();
}

class _MakeChatPostSwitchTileState extends State<MakeChatPostSwitchTile> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.chat_bubble_outline_outlined,
          color: AppColors.moreLightGrey,
        ),
        SizedBox(width: SizeConfig.screenWidthPercentage(2)),
        Text(
          'Make chat post',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Spacer(),
        CupertinoSwitch(
          value: isOn,
          activeColor: Colors.blue,
          onChanged: (value) => setState(() {
            isOn = value;
          }),
        )
      ],
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Wrap(
        children: [
          TagNSFWChip(
            onToggled: (tagged) => print(tagged),
          ),
          TagSpoilerChip(
            onToggled: (tagged) {},
          )
        ],
      ),
    );
  }
}

class TagSpoilerChip extends StatelessWidget {
  final void Function(bool tagged) onToggled;

  const TagSpoilerChip({
    Key? key,
    required this.onToggled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: BaseAppChip(
        onTagged: onToggled,
        taggedColor: AppColors.iron,
        untaggedColor: AppColors.lightBlack2,
        taggedIcon: const Icon(
          Icons.warning_rounded,
          size: 20,
          color: AppColors.black,
        ),
        untaggedIcon: const Icon(
          Icons.warning_amber_rounded,
          size: 20,
          color: AppColors.moreLightGrey,
        ),
        text: 'Tag Spoiler',
      ),
    );
  }
}

class TagNSFWChip extends StatelessWidget {
  final void Function(bool tagged) onToggled;

  const TagNSFWChip({
    Key? key,
    required this.onToggled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: BaseAppChip(
        onTagged: onToggled,
        taggedColor: AppColors.pink,
        untaggedColor: AppColors.lightBlack2,
        taggedIcon: const Icon(
          FontAwesomeIcons.meteor,
          size: 20,
          color: AppColors.black,
        ),
        untaggedIcon: const Icon(
          FontAwesomeIcons.meteor,
          size: 20,
          color: AppColors.moreLightGrey,
        ),
        text: 'Tag NSFW',
      ),
    );
  }
}
