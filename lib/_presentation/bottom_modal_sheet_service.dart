import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reddit_clone/_presentation/core/app/app_bottom_modal_sheet.dart';

import 'package:reddit_clone/domain/i_bottom_modal_sheet_service.dart';

class BottomModalSheetService implements IBottomModalSheetService {
  Map<String, BottomSheetRegisterer> registry;

  BottomModalSheetService({
    required this.registry,
  });

  @override
  void register({
    required String key,
    required BottomSheetRegisterer factoryFunc,
  }) {
    registry.putIfAbsent(key, () => factoryFunc);
  }

  @override
  void show(String str, BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        enableDrag: false,
        builder: (BuildContext dialogContext) {
          return AppModalBottomSheet(
              tiles: [registry[str]!(context, dialogContext)]);
        });
  }
}
