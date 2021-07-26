import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/bloc/create_feed_bloc.dart';
import '../../../../../../utility/app_logger.dart';
import '../../../../../core/app/colors.dart';
import 'text_feed_edit.dart';

class PollFeedEdit extends StatelessWidget {
  final String title;
  final String bodyText;
  final bool autofocus;

  const PollFeedEdit({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedTitleField(
          initialValue: title,
        ),
        FeedEditBodyTextField(
          autofocus: autofocus,
          inititialValue: bodyText,
        ),
        BlocBuilder<CreateFeedBloc, CreateFeedState>(
          builder: (context, state) {
            return state.maybeWhen(
              pollFeedEntry: (title, bodyText, options, pollEndsDays, _,
                      autofocus, error, touched) =>
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  options.length,
                  // 2,
                  (index) => PollOption(
                    hintText: 'Option ${index + 1}',
                    initialValue: options[index],
                    // initialValue: "",
                  ),
                ),
              ),
              orElse: () => const Text('cok ters bir seyler var'),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GestureDetector(
            onTap: () {
              log.d('onTap');
              context
                  .read<CreateFeedBloc>()
                  .add(const CreateFeedEvent.pollOptionAdded(''));
            },
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

class FeedEditBodyTextField extends StatelessWidget {
  final String inititialValue;
  final bool autofocus;
  const FeedEditBodyTextField(
      {Key? key, required this.inititialValue, this.autofocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      autofocus: autofocus,
      initialValue: inititialValue,
      onChanged: (value) => context
          .read<CreateFeedBloc>()
          .add(CreateFeedEvent.bodyTextChanged(value)),
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
            onTap: () {
              // showSnack(message: 'Image deleted', context: context);

              showModalBottomSheet(
                context: context,
                enableDrag: true,
                // isScrollControlled: true,
                backgroundColor: AppColors.lightBlack2,

                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                builder: (context) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Change Post Type',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Some of your post will be deleted if you continue.',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: AppColors.moreLightGrey),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                flex: 5,
                                child: GestureDetector(
                                    child: Text(
                                  'Cancel',
                                  textAlign: TextAlign.center,
                                ))),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 5,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Continue'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                    shape: StadiumBorder()),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
              context
                  .read<CreateFeedBloc>()
                  .add(CreateFeedEvent.pollEndsChanged(4));
            },
            child: BlocBuilder<CreateFeedBloc, CreateFeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Text('Something gone wrong'),
                  pollFeedEntry: (title, bodyText, options, pollEndsDays,
                          feedType, autofocus, error, touched) =>
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
                      Icon(
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
}

class PollOption extends StatelessWidget {
  final String hintText;
  final String? initialValue;
  const PollOption({
    Key? key,
    required this.hintText,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.more_vert, color: AppColors.iron),
        Expanded(
          child: TextFormField(
            initialValue: initialValue,
            inputFormatters: [LengthLimitingTextInputFormatter(40)],
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
      ],
    );
  }
}


/*

 // buildWhen: (previous, current) {
          //   final prevOptionsLengthOrNull = previous.maybeWhen(
          //       orElse: () => null,
          //       pollFeedEntry: (title, bodyText, options, pollEndsDays) =>
          //           options.length);
          //   final currentOptionsLengthOrNull = current.maybeWhen(
          //       orElse: () => null,
          //       pollFeedEntry: (title, bodyText, options, pollEndsDays) =>
          //           options.length);

          //   return prevOptionsLengthOrNull != null &&
          //       currentOptionsLengthOrNull != null &&
          //       prevOptionsLengthOrNull != currentOptionsLengthOrNull;
          // },

*/