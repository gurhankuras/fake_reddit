import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/bloc/create_feed_bloc.dart';
import '../../../../../core/app/colors.dart';
import 'poll_feed_edit.dart';

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
        FeedTitleField(initialValue: title, autofocus: autofocus),
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

class FeedTitleField extends StatefulWidget {
  final String initialValue;
  final bool autofocus;
  const FeedTitleField({
    Key? key,
    required this.initialValue,
    this.autofocus = false,
  }) : super(key: key);

  @override
  _FeedTitleFieldState createState() => _FeedTitleFieldState();
}

class _FeedTitleFieldState extends State<FeedTitleField> {
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      maxLines: null,
      style: Theme.of(context).textTheme.headline6,
      initialValue: widget.initialValue,
      onChanged: (value) {
        if (errorText != null && value.length <= 20) {
          setState(() {
            errorText = null;
          });
        }
        if (value.length > 20) {
          setState(() {
            errorText = 'Must be maximum 300 character long';
          });
        }
        context.read<CreateFeedBloc>().add(CreateFeedEvent.titleChanged(value));
      },
      decoration: InputDecoration(
        errorText: errorText,
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
