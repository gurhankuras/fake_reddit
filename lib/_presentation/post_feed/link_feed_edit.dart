import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/post_feed/text_feed_edit.dart';
import 'package:reddit_clone/application/create_feed/bloc/create_feed_bloc.dart';

class LinkFeedEdit extends StatelessWidget {
  final String title;
  final bool autofocus;
  const LinkFeedEdit({
    Key? key,
    required this.title,
    required this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final bloc = Provider.of<CreateFeedBloc>(context, listen: false);
    return Column(
      children: [
        FeedEditTitleField(
          initialValue: title,
          autofocus: autofocus,
        ),
        TextFormField(
          initialValue: '',
          decoration: InputDecoration(
            // isDense: false,
            hintText: 'Add URL',
            hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: AppColors.lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
