import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/post_feed/poll_feed_edit.dart';
import 'package:reddit_clone/application/create_feed/bloc/create_feed_bloc.dart';

class TextFeedEdit extends StatelessWidget {
  final String title;
  final bool autofocus;
  final String bodyText;
  const TextFeedEdit({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedEditTitleField(initialValue: title, autofocus: autofocus),
        FeedEditBodyTextField(inititialValue: bodyText, autofocus: autofocus)
        // TextField(
        //   decoration: InputDecoration(
        //     // isDense: false,
        //     hintText: 'Add an optional body text',
        //     hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
        //           color: AppColors.lightGrey,
        //           fontSize: 16,
        //           fontWeight: FontWeight.w400,
        //         ),
        //     border: InputBorder.none,
        //   ),
        // ),
      ],
    );
  }
}

class FeedEditTitleField extends StatelessWidget {
  final String initialValue;
  final bool autofocus;
  const FeedEditTitleField({
    Key? key,
    required this.initialValue,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      maxLines: null,
      style: Theme.of(context).textTheme.headline6,
      initialValue: initialValue,
      onChanged: (value) => context
          .read<CreateFeedBloc>()
          .add(CreateFeedEvent.titleChanged(value)),
      decoration: InputDecoration(
        // isDense: false,
        hintText: 'Add a Title',

        hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
              color: AppColors.lightGrey,
              fontWeight: FontWeight.w600,
            ),
        border: InputBorder.none,
      ),
    );
  }
}
