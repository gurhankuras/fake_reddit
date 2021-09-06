import 'package:flutter/material.dart';

abstract class ISnackbarService {
  void show({
    required String message,
    Widget? button,
    Duration? duration,
    Color? indicatorColor,
  });
  void error(String message);
  void info(String message);
  void success(String message);
}
