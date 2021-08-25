import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../domain/post_entry.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/app/feed_card.dart';
import '../core/reusable/app_header.dart';

class Entry {
  final int upvotes;
  final int commentCount;
  final String url;
  final String title;
  final String subredditName;
  final bool hasSaved;
  Entry({
    required this.upvotes,
    required this.commentCount,
    required this.url,
    required this.title,
    required this.subredditName,
    this.hasSaved = false,
  });
}

class VisualContentDisplayPage extends StatefulWidget {
  final List<PostEntry> entries;
  final int currentImageIndex;
  const VisualContentDisplayPage({
    Key? key,
    required this.entries,
    required this.currentImageIndex,
  }) : super(key: key);

  @override
  _VisualContentDisplayPageState createState() =>
      _VisualContentDisplayPageState();
}

class _VisualContentDisplayPageState extends State<VisualContentDisplayPage>
    with SingleTickerProviderStateMixin {
  bool showOverlay = true;
  late int currentIndex;
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  void _pageControllerListener() {
    // print((_pageController.page! - currentIndex).abs());
    // print(_opacityAnimation.value);
    // _animationController.value = _pageController.page! - currentIndex;
    // _animationController.value = _pageController.page!;
    _animationController.value = (_pageController.page! - currentIndex).abs();
  }

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentImageIndex;
    _pageController = PageController(
      initialPage: currentIndex,
    );
    _pageController.addListener(_pageControllerListener);
    _animationController = AnimationController(vsync: this);
    final curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Interval(0.0, 0.5));
    _opacityAnimation =
        Tween<double>(begin: 1.0, end: 0).animate(curvedAnimation);
    // currentIndex = 0;
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.removeListener(_pageControllerListener);
    _pageController.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print('BUILD');

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => setState(() {
            showOverlay = !showOverlay;
          }),
          child: Stack(
            children: [
              ExtendedImageGesturePageView.builder(
                itemBuilder: (BuildContext context, int index) {
                  var item = widget.entries[index].image;
                  Widget image = ExtendedImage.network(
                    item,
                    fit: BoxFit.contain,
                    enableSlideOutPage: true,
                    mode: ExtendedImageMode.gesture,
                    initGestureConfigHandler: (state) => GestureConfig(
                      inPageView: true,
                      initialScale: 1.0,
                      cacheGesture: false,
                    ),
                  );
                  //  Hero(
                  //     tag: item,
                  //     child: );

                  image = Container(
                    child: image,
                    padding: EdgeInsets.all(5.0),
                  );

                  if (index == currentIndex) {
                    // return Hero(
                    //   tag: item,
                    //   child: image,
                    // );
                    return image;
                  } else {
                    return image;
                  }
                },
                itemCount: widget.entries.length,
                onPageChanged: (int index) {
                  currentIndex = index;
                  if (showOverlay) {
                    setState(() {});
                  }
                  // rebuild.add(index);
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
              ),
              // if (showOverlay)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 250),
                  opacity: showOverlay ? 1 : 0,
                  child: FadeTransition(
                    opacity: _opacityAnimation,
                    child: _VisualContentDisplayHeader(
                      showingOverlay: showOverlay,
                      entry: widget.entries[currentIndex],
                    ),
                  ),
                ),
              ),
              // // if (showOverlay)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 250),
                  opacity: showOverlay ? 1 : 0,
                  child: FadeTransition(
                    opacity: _opacityAnimation,
                    child: PostActionBar(
                      entry: widget.entries[currentIndex],
                      contentColor: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.25, 1],
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.05),
                          // Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VisualContentDisplayHeader extends StatelessWidget {
  final bool showingOverlay;
  final PostEntry entry;

  const _VisualContentDisplayHeader({
    Key? key,
    required this.showingOverlay,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.transparent,
            // Colors.black.withOpacity(0.1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        // padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // CloseButton(),
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.close, color: Colors.white)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://preview.redd.it/yuaom7xz9xi11.jpg?width=1057&format=pjpg&auto=webp&s=dd60a5c152f0432340bfa2596927208a479170b4',
                        ),
                      ),
                    ),
                    AppHeaderText(
                      entry.subreddit.toSubreddit,
                      fontSizeFactor: 0.8,
                      fontWeightDelta: 0,
                    ),
                  ],
                ),
                SaveBanner(showingOverlay: showingOverlay),
              ],
            ),
            SizedBox(height: 15),
            AppHeaderText(
              entry.contentText,
              color: Colors.white,
              fontSizeFactor: 0.8,
            ),
          ],
        ),
      ),
    );
  }
}

class SaveBanner extends StatefulWidget {
  final bool showingOverlay;
  const SaveBanner({
    Key? key,
    required this.showingOverlay,
  }) : super(key: key);

  @override
  _SaveBannerState createState() => _SaveBannerState();
}

class _SaveBannerState extends State<SaveBanner> {
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.showingOverlay
            ? () {
                print('onTap');
                setState(() {
                  saved = !saved;
                });
              }
            : null,
        child: Icon(
          saved ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.white,
        ));
  }
}
