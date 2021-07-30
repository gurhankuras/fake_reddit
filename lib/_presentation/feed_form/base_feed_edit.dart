import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/app_snackbar.dart';
import 'package:reddit_clone/application/bloc/create_feed_bloc.dart';
import 'package:reddit_clone/domain/image_data.dart';
import 'package:reddit_clone/routes.dart';

import '../core/app/colors.dart';
import 'text_feed_edit.dart';

class ImageFeedEdit extends StatelessWidget {
  final String title;
  const ImageFeedEdit({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedTitleField(initialValue: title),
        BlocConsumer<CreateFeedBloc, CreateFeedState>(
          listenWhen: (previous, current) =>
              previous.maybeMap(
                    imageFeedEntry: (state) => state.images.length,
                    orElse: () => 0,
                  ) >
                  current.maybeMap(
                    imageFeedEntry: (state) => state.images.length,
                    orElse: () => 0,
                  ) &&
              previous.feedType == current.feedType,
          listener: (context, state) {
            showSnack(
              message: 'Image Deleted',
              context: context,
              button: TextButton(
                onPressed: () {
                  context
                      .read<CreateFeedBloc>()
                      .add(const CreateFeedEvent.recoverLastDeletedImage());
                  Navigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.createFeedPage,
                  );
                },
                child: const Text('UNDO'),
              ),
            );
          },
          buildWhen: (previous, current) =>
              previous.maybeMap(
                  imageFeedEntry: (state) => state.images,
                  orElse: () => null) !=
              current.maybeMap(
                  imageFeedEntry: (state) => state.images, orElse: () => null),
          builder: (context, state) {
            return SizedBox(
              height: 150,
              child: state.maybeMap(
                orElse: () => ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [],
                ),
                imageFeedEntry: (state) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.images.length + 1,
                  // itemCount: state.images.length + 1,
                  itemBuilder: (context, index) => index == state.images.length
                      ? const ImageAddingArea()
                      : ImagePreviewBox(
                          imageData: state.images[index],
                          key: ValueKey(state.images[index].id),
                        ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ImagePreviewBox extends StatefulWidget {
  final ImageData imageData;
  const ImagePreviewBox({
    Key? key,
    required this.imageData,
  }) : super(key: key);

  @override
  _ImagePreviewBoxState createState() => _ImagePreviewBoxState();
}

class _ImagePreviewBoxState extends State<ImagePreviewBox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    final Animation<double> curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1, 0),
    ).animate(curvedAnimation);
    // _animation = Tween<double>(begin: 1.0, end: 0.0).animate(curvedAnimation);

    _opacityAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(curvedAnimation);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return SlideTransition(
          position: _offsetAnimation,
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: child,
          ),
        );
      },
      // scale: _animation,
      // opacity: _animation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: MemoryImage(widget.imageData.image.readAsBytesSync()),
                ),
              ),
            ),
            Positioned(
                right: 5,
                top: 5,
                child: GestureDetector(
                  onTap: () async {
                    await _controller.forward();
                    context
                        .read<CreateFeedBloc>()
                        .add(CreateFeedEvent.imageDeleted(widget.imageData.id));
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const FittedBox(
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(Icons.close),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ImageAddingArea extends StatelessWidget {
  const ImageAddingArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => context
            .read<CreateFeedBloc>()
            .add(const CreateFeedEvent.addImageClicked()),
        child: DottedBorder(
          color: AppColors.moreLightGrey,
          strokeWidth: 1,
          dashPattern: const [2, 8],
          borderType: BorderType.RRect,
          child: Container(
            width: 150,
            height: 150,
            child: const Icon(
              Icons.add,
              color: Colors.blue,
              size: 36,
            ),
          ),
        ),
      ),
    );
  }
}
