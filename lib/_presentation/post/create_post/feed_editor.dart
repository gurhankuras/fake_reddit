import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'base_feed_edit.dart';

import '../../../application/post/create_post/create_post_bloc.dart';
import 'link_feed_edit.dart';
import 'poll_feed_edit.dart';
import 'text_feed_edit.dart';

class PostEditor extends StatelessWidget {
  const PostEditor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        BlocBuilder<CreatePostBloc, CreatePostState>(
          buildWhen: (previous, current) =>
              previous.feedType != current.feedType,
          builder: (context, state) {
            return SliverToBoxAdapter(
              child: state.maybeMap(
                textPostEntry: (state) => TextPostEdit(
                  title: state.title,
                  bodyText: state.bodyText,
                  autofocus: state.autofocus,
                ),
                linkPostEntry: (state) => LinkPostEdit(
                  title: state.title,
                  autofocus: state.autofocus,
                ),
                pollPostEntry: (state) => PollPostEdit(
                  title: state.title,
                  bodyText: state.bodyText,
                  autofocus: state.autofocus,
                ),
                imagePostEntry: (state) => ImagePostEdit(
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
