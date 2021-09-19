import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/create_post/create_post_bloc.dart';
import '../../core/constants/colors.dart';
import 'poll_feed_edit.dart';

class TextPostEdit extends StatelessWidget {
  final String title;
  final bool autofocus;
  final String bodyText;
  const TextPostEdit({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostTitleField(initialValue: title, autofocus: autofocus),
        PostEditBodyTextField(inititialValue: bodyText, autofocus: autofocus)
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

class PostTitleField extends StatefulWidget {
  final String initialValue;
  final bool autofocus;
  const PostTitleField({
    Key? key,
    required this.initialValue,
    this.autofocus = false,
  }) : super(key: key);

  @override
  _PostTitleFieldState createState() => _PostTitleFieldState();
}

class _PostTitleFieldState extends State<PostTitleField> {
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
        context.read<CreatePostBloc>().add(CreatePostEvent.titleChanged(value));
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
