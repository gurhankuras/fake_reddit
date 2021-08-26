import 'package:flutter/material.dart';
import '../core/constants/colors.dart';
import '../../application/bloc/create_feed_bloc.dart';

class ContentPreview extends StatelessWidget {
  final String title;
  final String subtitle;

  const ContentPreview({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  factory ContentPreview.image(
          {required String title,
          required String subtitle,
          required ImageProvider<Object> imageProvider,
          required bool multipleImage}) =>
      _ContentPreviewWithImage(
        title: title,
        subtitle: subtitle,
        imageProvider: imageProvider,
        multipleImage: multipleImage,
        type: FeedType.image,
      );

  factory ContentPreview.poll({
    required String title,
    required String subtitle,
  }) =>
      _ContentPreviewWithImage(
        title: title,
        subtitle: subtitle,
        type: FeedType.poll,
      );

  factory ContentPreview.link({
    required String title,
    required String subtitle,
    ImageProvider<Object>? imageProvider,
  }) =>
      _ContentPreviewWithImage(
        title: title,
        subtitle: subtitle,
        imageProvider: imageProvider,
        type: FeedType.link,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [ContentText(title: title, subtitle: subtitle)],
      ),
    );
  }
}

class _ContentPreviewWithImage extends ContentPreview {
  final ImageProvider<Object>? imageProvider;
  final bool multipleImage;
  final FeedType type;

  const _ContentPreviewWithImage({
    Key? key,
    required String title,
    required String subtitle,
    this.imageProvider,
    this.multipleImage = false,
    required this.type,
  }) : super(key: key, subtitle: subtitle, title: title);

  Widget? resolveIcon() {
    final color = AppColors.iron;
    switch (type) {
      case FeedType.image:
        return multipleImage ? Icon(Icons.add_box, color: color) : null;
      case FeedType.link:
        return Icon(Icons.link, color: color);
      case FeedType.poll:
        return Icon(Icons.poll, color: color);
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          color: AppColors.lightBlack2,
        ),
        height: 80,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  ),
              width: 75,
              height: 80,
              child: Stack(
                children: [
                  Container(
                    width: 75,
                    height: 80,
                    decoration: BoxDecoration(
                      image: imageProvider != null
                          ? DecorationImage(
                              fit: BoxFit.cover,
                              image: imageProvider!,
                            )
                          : null,
                      color: AppColors.lightBlack3,
                      // borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color:
                          multipleImage ? Colors.black.withOpacity(0.5) : null,
                      child: resolveIcon(),
                    ),
                  )
                ],
              ),
            ),
            ContentText(title: title, subtitle: subtitle)
          ],
        ),
      ),
    );
  }
}

class ContentText extends StatelessWidget {
  const ContentText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.caption?.copyWith(
                    color: AppColors.moreLightGrey,
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
