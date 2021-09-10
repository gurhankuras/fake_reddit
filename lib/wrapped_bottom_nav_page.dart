import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/user/user_panel.dart';
import 'package:reddit_clone/_presentation/user/user_panel_controller.dart';
import 'package:reddit_clone/bottom_nav_page.dart';
import 'package:reddit_clone/injection.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class WrappedBottomNavPage extends StatefulWidget {
  const WrappedBottomNavPage({Key? key}) : super(key: key);

  @override
  _WrappedBottomNavPageState createState() => _WrappedBottomNavPageState();
}

class _WrappedBottomNavPageState extends State<WrappedBottomNavPage> {
  late final PanelController panelController;

  @override
  void initState() {
    super.initState();
    panelController = PanelController();
    getIt<UserPanelController>().setController(panelController);
  }

  @override
  void dispose() {
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
