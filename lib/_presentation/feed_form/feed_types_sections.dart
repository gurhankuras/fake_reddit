import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bloc/create_feed_bloc.dart';

import '../core/app/colors.dart';
import 'create_feed_entry_page.dart';
import 'feed_type_button.dart';

class FeedTypesSection extends StatelessWidget {
  final List<FeedTypeData> feedTypes;

  const FeedTypesSection({Key? key, required this.feedTypes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.lightBlack2,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: BlocBuilder<CreateFeedBloc, CreateFeedState>(
          builder: (context, state) {
            return Wrap(
              runSpacing: 10, // satirlar arasi
              spacing: 60,
              children: List.generate(
                feedTypes.length,
                (index) => FeedTypeButton(
                  feedType: feedTypes[index],
                  index: index,
                  selected: index ==
                      state.map(
                        textFeedEntry: (_) => 0,
                        linkFeedEntry: (_) => 1,
                        imageFeedEntry: (_) => 2,
                        videoFeedEntry: (_) => 3,
                        pollFeedEntry: (_) => 4,
                      ),
                  onTap: (index) => context
                      .read<CreateFeedBloc>()
                      .add(CreateFeedEvent.feedTypeChanged(
                        index: index,
                        autofocus: false,
                        showDialog: showF(context),
                      )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
