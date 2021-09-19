import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/create_post/create_post_bloc.dart';
import '../../core/constants/colors.dart';
import '../../core/size_config.dart';
import 'create_post_page.dart';
import 'feed_editor.dart';
import 'feed_types_sections.dart';
import 'minimized_feed_types_bar.dart';

class CreatePostEditorPage extends StatelessWidget {
  const CreatePostEditorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final feedTypeBar = SizeConfig.isKeyboardHidden(context)
        ? PostTypesSection(feedTypes: feedTypes)
        : MinimizedPostTypesBar(feedTypes: feedTypes);
    return Container(
      color: AppColors.lightBlack,
      child: Column(
        children: [
          ChangeCommunityBar(
              community: context.read<CreatePostBloc>().community!),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: PostEditor(),
            ),
          ),
          feedTypeBar
        ],
      ),
    );
  }

  List<PostTypeData> get feedTypes => [
        PostTypeData(icon: Icons.text_fields, text: 'Text'),
        PostTypeData(icon: Icons.link, text: 'Link'),
        PostTypeData(icon: Icons.image_outlined, text: 'Image'),
        PostTypeData(icon: Icons.play_circle_outline, text: 'Video'),
        PostTypeData(icon: Icons.format_list_numbered_outlined, text: 'Poll'),
      ];
}
