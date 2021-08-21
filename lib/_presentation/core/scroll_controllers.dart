import 'package:flutter/material.dart';

// TODO : switch to getIt from Provider
class ScrollControllers {
  ScrollController? newsScrollController;

  initNews() {
    newsScrollController = ScrollController();
  }
}
