import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/create_post/create_post_bloc.dart';
import '../../core/constants/colors.dart';
import 'create_post_page.dart';
import 'text_feed_edit.dart';

class PollPostEdit extends StatelessWidget {
  final String title;
  final String bodyText;
  final bool autofocus;

  const PollPostEdit({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('DISTAKI BUILD');
    return Column(
      children: [
        PostTitleField(
          initialValue: title,
        ),
        PostEditBodyTextField(
          autofocus: autofocus,
          inititialValue: bodyText,
        ),
        BlocBuilder<CreatePostBloc, CreatePostState>(
          builder: (context, state) {
            print('GURHAN GURHAN');
            return state.maybeWhen(
              pollPostEntry: (title, bodyText, options, pollEndsDays, _,
                      autofocus, error) =>
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  options.length,
                  // 2,
                  (index) => PollOption(
                    hintText: 'Option ${index + 1}',
                    initialValue: options[index],
                    index: index,
                    // initialValue: "",
                  ),
                ),
              ),
              orElse: () => const Text('cok ters bir seyler var'),
            );
          },
        ),
        GestureDetector(
          onTap: () {
            context
                .read<CreatePostBloc>()
                .add(const CreatePostEvent.pollOptionAdded(''));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Icon(Icons.add, color: AppColors.iron),
                Text(
                  'Add Option',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: AppColors.lightGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                )
              ],
            ),
          ),
        ),
        PollEnds()
      ],
    );
  }
}

class PostEditBodyTextField extends StatelessWidget {
  final String inititialValue;
  final bool autofocus;
  const PostEditBodyTextField(
      {Key? key, required this.inititialValue, this.autofocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      autofocus: autofocus,
      initialValue: inititialValue,
      onChanged: (value) => context
          .read<CreatePostBloc>()
          .add(CreatePostEvent.bodyTextChanged(value)),
      decoration: InputDecoration(
        // isDense: false,

        hintText: 'Add an optional body text',
        hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: AppColors.lightGrey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
        border: InputBorder.none,
      ),
    );
  }
}

class PollEnds extends StatelessWidget {
  const PollEnds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'POLL ENDS',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.bold,
                  // fontSize: 16,
                ),
          ),
          GestureDetector(
            onTap: () async {
              context
                  .read<CreatePostBloc>()
                  .add(CreatePostEvent.pollEndsPressed(
                    showDays: showDays(context),
                  ));
            },
            child: BlocBuilder<CreatePostBloc, CreatePostState>(
              buildWhen: _buildPollEndsDaysWhen,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Text('Something gone wrong'),
                  pollPostEntry: (title, bodyText, options, pollEndsDays,
                          feedType, autofocus, error) =>
                      Row(
                    children: [
                      Text(
                        '$pollEndsDays days',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: AppColors.lightGrey,
                              fontWeight: FontWeight.bold,
                              // fontSize: 16,
                            ),
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: AppColors.lightGrey,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  bool _buildPollEndsDaysWhen(
          CreatePostState previous, CreatePostState current) =>
      previous.maybeMap(
        pollPostEntry: (state) => state.pollEndsDays,
        orElse: () => null,
      ) !=
      current.maybeMap(
        pollPostEntry: (state) => state.pollEndsDays,
        orElse: () => null,
      );

  //     previous is PollPostEntry &&
  //     current is PollPostEntry &&
  //     previous.pollEndsDays != current.pollEndsDays,

}

class PollOption extends StatelessWidget {
  final String hintText;
  final String? initialValue;
  final int index;
  const PollOption({
    Key? key,
    required this.hintText,
    this.initialValue,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.more_vert, color: AppColors.iron),
        Expanded(
          child: TextFormField(
            autofocus: index > 1,
            onChanged: (value) => context
                .read<CreatePostBloc>()
                .add(CreatePostEvent.pollOptionEdited(index, value)),
            initialValue: initialValue,
            inputFormatters: [LengthLimitingTextInputFormatter(60)],
            maxLines: 1,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: AppColors.lightGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
              border: InputBorder.none,
            ),
          ),
        ),
        if (index > 1)
          GestureDetector(
            onTap: () => context
                .read<CreatePostBloc>()
                .add(CreatePostEvent.pollOptionDeleted(index)),
            child: Icon(Icons.close),
          )
      ],
    );
  }
}


/*

 // buildWhen: (previous, current) {
          //   final prevOptionsLengthOrNull = previous.maybeWhen(
          //       orElse: () => null,
          //       pollPostEntry: (title, bodyText, options, pollEndsDays) =>
          //           options.length);
          //   final currentOptionsLengthOrNull = current.maybeWhen(
          //       orElse: () => null,
          //       pollPostEntry: (title, bodyText, options, pollEndsDays) =>
          //           options.length);

          //   return prevOptionsLengthOrNull != null &&
          //       currentOptionsLengthOrNull != null &&
          //       prevOptionsLengthOrNull != currentOptionsLengthOrNull;
          // },

*/