import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/loading_indicator.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart'
    hide RefreshIndicatorState, RefreshIndicator;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart' hide RefreshIndicator;
import 'package:flutter/cupertino.dart';

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
          // body =
        } else if (mode == LoadStatus.failed) {
          body = Text("Load Failed!Click retry!");
        } else if (mode == LoadStatus.canLoading) {
          body = Text("release to load more");
        } else {
          body = Text("No more Data");
        }
        return SizedBox(
          height: 35.0,
          child: Center(child: body),
        );
      },
    );
  }
}

/// pull_to_refresh'in su anki implementasyonunda [RefreshStatus.idle] iken
/// widget orda boşuna kalmaya devam ediyor. Bu app'de sayfaların state'leri tutulduğu için
/// bir kere page'i olusturdugumuzda controller'lar bosuna ram yiyecek bu yuzden idle'a basit
/// icon koyuyorum, yoksa aynı gerçek uygulamadaki gibi indicator'i da scroll'a göre animate edebilirim
/// kutuphanenin RefreshStatus'ta bir durum daha olmalı aslında. o da idle gibi fakat sadece yukarı scroll ettigimiz anda bu state'e girmeli
class RefresherHeader extends StatelessWidget {
  const RefresherHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClassicHeader(
      refreshingText: '',
      idleText: '',
      refreshingIcon: LoadingIndicator(
        arcLength: math.pi / 3,
        color: AppColors.blue,
        period: Duration(milliseconds: 1500),
        width: 35,
        height: 35,
      ),
      releaseText: '',
      completeText: '',
      completeIcon: null,
      completeDuration: Duration.zero,
      releaseIcon: LoadingIndicator(
        arcLength: math.pi / 3,
        color: AppColors.blue,
        period: Duration(milliseconds: 1500),
        width: 35,
        height: 35,
      ),
    );
  }
}
