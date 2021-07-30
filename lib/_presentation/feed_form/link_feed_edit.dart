import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/application/bloc/create_feed_bloc.dart';
import 'package:string_validator/string_validator.dart';
import '../core/app/colors.dart';
import 'text_feed_edit.dart';

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
        FeedTitleField(
          initialValue: title,
          autofocus: autofocus,
        ),
        TextFormField(
          initialValue: '',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            return !isURL(value!) ? "invalid url" : null;
          },
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
          onChanged: (value) => context.read<CreateFeedBloc>().add(
                CreateFeedEvent.urlChanged(value),
              ),
        ),
      ],
    );
  }
}
