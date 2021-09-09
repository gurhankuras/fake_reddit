import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/_presentation/core/constants/assets.dart';

class CustomRefresherFooter extends StatelessWidget {
  const CustomRefresherFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (context, mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = Text("pull up load");
        } else if (mode == LoadStatus.loading) {
          body = SizedBox.shrink();
          // body = CircularProgressIndicator();
          // body = Image.asset('assets/spinner2.gif');
        } else if (mode == LoadStatus.failed) {
          body = Text("Load Failed!Click retry!");
        } else if (mode == LoadStatus.canLoading) {
          body = Text("release to load more");
        } else {
          body = Text("No more Data");
        }
        return Container(
          height: 35.0,
          child: Center(child: body),
        );
      },
    );
  }
}

class RefresherHeader extends StatelessWidget {
  const RefresherHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClassicHeader(
      refreshingText: '',
      idleText: '',
      releaseText: '',
      completeText: '',
      completeIcon: null,
      completeDuration: Duration.zero,
      releaseIcon: null,
    );
  }
}
