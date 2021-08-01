import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bloc/create_feed_bloc.dart';

import 'base_feed_edit.dart';
import 'link_feed_edit.dart';
import 'poll_feed_edit.dart';
import 'text_feed_edit.dart';

class FeedEditor extends StatelessWidget {
  const FeedEditor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        BlocBuilder<CreateFeedBloc, CreateFeedState>(
          buildWhen: (previous, current) =>
              previous.feedType != current.feedType,
          builder: (context, state) {
            return SliverToBoxAdapter(
              child: state.maybeMap(
                textFeedEntry: (state) => TextFeedEdit(
                  title: state.title,
                  bodyText: state.bodyText,
                  autofocus: state.autofocus,
                ),
                linkFeedEntry: (state) => LinkFeedEdit(
                  title: state.title,
                  autofocus: state.autofocus,
                ),
                pollFeedEntry: (state) => PollFeedEdit(
                  title: state.title,
                  bodyText: state.bodyText,
                  autofocus: state.autofocus,
                ),
                imageFeedEntry: (state) => ImageFeedEdit(
                  title: state.title,
                ),
                orElse: () => const Text('HAHAHAHA'),
              ),
            );
          },
        ),
      ],
    );
  }
}
