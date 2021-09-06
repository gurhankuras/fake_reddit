import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeControllerManager {
  List<ScrollController?> scrollControllers = List.generate(3, (index) => null);
  List<RefreshController?> refreshControllers =
      List.generate(3, (index) => null);
  TabController? tabController;

  int? get _getTabIndex => tabController?.index;

  ScrollController getScrollController(HomeScrollersEnum index) {
    scrollControllers[index.index] ??= ScrollController();
    return scrollControllers[index.index]!;
  }

  RefreshController getRefreshController(HomeScrollersEnum index) {
    refreshControllers[index.index] ??= RefreshController();
    return refreshControllers[index.index]!;
  }

  void scrollToStartOrRefresh() {
    final tabIndex = _getTabIndex;
    if (tabIndex == null) return;

    final scrollController = scrollControllers[tabIndex];
    final refreshController = refreshControllers[tabIndex];

    if (scrollController == null || refreshController == null) return;

    if (scrollController.hasClients) {
      if (scrollController.offset == 0.0) {
        requestRefresh(refreshController);
      } else {
        scrollToStart(scrollController);
      }
    }
  }

  void requestRefresh(RefreshController refreshController) =>
      refreshController.requestRefresh();

  void scrollToStart(ScrollController controller) => controller.animateTo(0,
      duration: Duration(milliseconds: 200), curve: Curves.easeIn);
}

// initNews() {
//   newsScrollController = ScrollController();
// }

enum HomeScrollersEnum { news, home, popular }
