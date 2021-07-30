import 'package:flutter/material.dart';

typedef BottomSheetRegisterer = Widget Function(
    BuildContext context, BuildContext dialogContext);

abstract class IBottomModalSheetService {
  void register({
    required String key,
    required BottomSheetRegisterer factoryFunc,
  });
  void show(String str, BuildContext context);
}
