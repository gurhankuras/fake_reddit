import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:injectable/injectable.dart';

@Singleton()
class UserPanelController {
  PanelController? controller;
  setController(PanelController? panelController) {
    controller = panelController;
  }
}
