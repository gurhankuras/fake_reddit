import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/subreddit/subreddit_info.dart';
import '../../routes.dart';
import '../core/app/extensions/int_extension.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/constants/colors.dart';

class PostToCommunitySuggestionTile extends StatelessWidget {
  final SubredditInfo community;
  const PostToCommunitySuggestionTile({Key? key, required this.community})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subtitleTextStyle = Theme.of(context).textTheme.caption?.copyWith(
          color: AppColors.moreLightGrey,
          fontSize: 13,
        );
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(
        Routes.createFeedPage,
        arguments: CreateFeedPageArguments(
          community,

          //  context.read<MainPageBloc>(),
        ),
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(community.avatar),
      ),
      title: Text(
        community.name.toSubreddit,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (community.isNSFW) NSFWWarning(inPost: false),
          if (community.isNSFW) Text(' • ', style: subtitleTextStyle),
          Text('${community.onlineCount.to()} online',
              style: subtitleTextStyle),
          Text(' • ', style: subtitleTextStyle),
          Text('recently visited', style: subtitleTextStyle),
        ],
      ),
    );
  }
}

class NSFWWarning extends StatelessWidget {
  final bool darkened;
  final bool inPost;
  const NSFWWarning({
    Key? key,
    this.darkened = false,
    required this.inPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.caption?.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color:
              darkened && !inPost ? AppColors.camelot : Colors.pinkAccent[400]!,
        );
    return Row(
      children: [
        Icon(
          Icons.report_problem,
          size: 13,
          color:
              darkened && !inPost ? AppColors.camelot : Colors.pinkAccent[400]!,
        ),
        const SizedBox(width: 4),
        Text('NSFW', style: textStyle),
      ],
    );
  }
}

final mockSuggestion = SubredditInfo(
  isNSFW: true,
  onlineCount: 2654245000,
  name: 'Terraria',
  avatar: 'https://i.redd.it/aqg4kea97uf51.png',
  backgroundImage: '',
  description: '',
  memberCount: 222,
);
