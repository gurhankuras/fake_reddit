import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'core/constants/colors.dart';
import 'user/user_panel.dart';
import 'user/user_panel_controller.dart';
import '../bottom_nav_page.dart';
import '../injection.dart';
import '../utility/log_dispose.dart';
import '../utility/log_init.dart';

class WrappedBottomNavPage extends StatefulWidget {
  const WrappedBottomNavPage({Key? key}) : super(key: key);

  @override
  _WrappedBottomNavPageState createState() => _WrappedBottomNavPageState();
}

class _WrappedBottomNavPageState extends State<WrappedBottomNavPage> {
  late final PanelController panelController;

  @override
  void initState() {
    logInit(WrappedBottomNavPage);
    super.initState();
    panelController = PanelController();
    getIt<UserPanelController>().setController(panelController);
  }

  @override
  void dispose() {
    logDispose(WrappedBottomNavPage);
    getIt<UserPanelController>().setController(null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      color: AppColors.black,
      controller: panelController,
      backdropEnabled: true,
      body: BottomNavPage(),
      minHeight: 0,
      panelBuilder: (sc) => UserPanel(panelController: panelController),
    );
  }
}
