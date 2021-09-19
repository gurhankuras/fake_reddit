import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'create_post_page.dart';

import '../../../application/post/create_post/create_post_bloc.dart';
import '../../core/constants/colors.dart';
import 'feed_type_button.dart';

class PostTypesSection extends StatelessWidget {
  final List<PostTypeData> feedTypes;

  const PostTypesSection({Key? key, required this.feedTypes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.lightBlack2,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: BlocBuilder<CreatePostBloc, CreatePostState>(
          builder: (context, state) {
            return Wrap(
              runSpacing: 10, // satirlar arasi
              spacing: 60,
              children: List.generate(
                feedTypes.length,
                (index) => PostTypeButton(
                  feedType: feedTypes[index],
                  index: index,
                  selected: index ==
                      state.map(
                        textPostEntry: (_) => 0,
                        linkPostEntry: (_) => 1,
                        imagePostEntry: (_) => 2,
                        videoPostEntry: (_) => 3,
                        pollPostEntry: (_) => 4,
                      ),
                  onTap: (index) => context
                      .read<CreatePostBloc>()
                      .add(CreatePostEvent.feedTypeChanged(
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
