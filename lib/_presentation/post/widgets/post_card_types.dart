import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

import '../../../domain/post/post_entry.dart';
import '../../../utility/launch_url.dart';
import '../../../utility/mock_objects.dart';
import '../../core/blurred_image.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable/app_header.dart';
import '../../core/size_config.dart';
import '../../visual_content_display/visual_content_display_page.dart';

class SideBySideTextAndImageContent extends StatelessWidget {
  final PostEntry entry;
  final Widget image;
  final bool inPost;
  const SideBySideTextAndImageContent({
    Key? key,
    required this.entry,
    required this.image,
    required this.inPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: DropCapText(
        entry.contentText,
        style: Theme.of(context).textTheme.headline6?.apply(
              fontSizeFactor: 0.9,
              fontWeightDelta: 0,
              color: entry.visited && !inPost ? AppColors.grey : null,
            ),
        dropCapPadding: EdgeInsets.all(2),
        dropCapPosition: DropCapPosition.end,
        dropCap: DropCap(
          width: 100,
          height: 100,
          child: image,
        ),
      ),
    );
  }
}

class PostTextContent extends StatelessWidget {
  final PostEntry entry;
  final bool inPost;
  const PostTextContent({
    Key? key,
    required this.entry,
    required this.inPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(entry.contentText,
        //     style: Theme.of(context).textTheme.headline6?.apply(
        //           fontSizeFactor: 0.9,
        //           color: entry.visited && !inPost ? AppColors.grey : null,
        //         )
        AppHeaderText(
          entry.contentText,
          fontWeightDelta: 0,
          fontSizeFactor: 0.9,
          color: entry.visited && !inPost ? AppColors.grey : Colors.white,
        ),
        //  TextStyle(
        //   fontSize: 17,
        //   fontWeight: FontWeight.w500,
        // ),
        // ),
        if (entry.bodyText != '' && inPost)
          SizedBox(height: SizeConfig.screenWidthPercentage(2)),
        if (entry.bodyText != '' && inPost)
          Text(
            entry.bodyText!,
          )
      ],
    );
  }
}

class LinkedPostImage extends StatelessWidget {
  const LinkedPostImage({Key? key, required this.entry}) : super(key: key);
  final PostEntry entry;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchURL(entry.url!),
      child: Stack(
        children: [
          Positioned.fill(
            child: BlurredImage(
              blurred: entry.isNFSW,
              url: entry.linkImage!,
            ),
          ),
          // Image.network(mockPostEntry.image),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(2),
              color: Colors.black.withOpacity(0.6),
              child: AppHeaderText(
                'imgur.com',
                fontSizeFactor: 0.6,
                fontWeightDelta: -1,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ImagePostContent extends StatelessWidget {
  final PostEntry entry;
  final bool inPost;
  const ImagePostContent({
    Key? key,
    required this.entry,
    required this.inPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderText(
          entry.contentText,
          fontWeightDelta: 0,
          fontSizeFactor: 0.9,
          color: entry.visited && !inPost ? AppColors.grey : Colors.white,
        ),
        SizedBox(height: SizeConfig.screenWidthPercentage(2)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VisualContentDisplayPage(
                    entries: [mockMixedPosts[1], mockMixedPosts[2]],
                    currentImageIndex: 0),
              ),
            );
          },
          child: Image.network(
            // 'https://images.unsplash.com/photo-1455849318743-b2233052fcff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
            entry.image!,
          ),
        )
      ],
    );
  }
}
