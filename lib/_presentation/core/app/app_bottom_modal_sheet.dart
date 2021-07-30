import 'package:flutter/material.dart';

import 'colors.dart';

class AppModalBottomSheet extends StatelessWidget {
  final List<Widget> tiles;
  final VoidCallback? onClosed;
  const AppModalBottomSheet({
    required this.tiles,
    Key? key,
    this.onClosed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ...tiles,
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.darkGrey,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Close',
                  style: TextStyle(color: AppColors.mmoreLightGrey),
                ),
                onPressed: onClosed ?? () => Navigator.pop(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ModelSheetTile extends StatelessWidget {
  final VoidCallback onAction;
  final String text;
  final IconData icon;
  const ModelSheetTile({
    Key? key,
    required this.onAction,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onLongPressEnd: (details) => onAction(),
      onTap: onAction,
      child: AbsorbPointer(
        absorbing: true,
        child: ListTile(
          dense: true,
          // onTap: () => log.i('onTap!'),
          // onLongPress: () => log.i('LongPressEnd!'),
          title: Text(
            text,
            style: theme.textTheme.bodyText1?.copyWith(color: AppColors.iron),
          ),
          leading: Icon(
            icon,
            color: AppColors.iron,
          ),
        ),
      ),
    );
  }
}

// GestureDetector(
          //   onTap: () {
          //     log.i('onTap!');
          //   },
          //   onLongPressEnd: (_) {
          //     log.i('LongPressEnd!');
          //   },
          //   child: SizedBox(
          //     // width: double.infinity,
          //     child: Padding(
          //       padding: const EdgeInsets.all(16.0),
          //       child: Row(
          //         // mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(right: 16.0),
          //             child: Icon(Icons.share),
          //           ),
          //           Text(
          //             'Share',
          //             style: theme.textTheme.bodyText1
          //                 ?.copyWith(color: AppColors.iron),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),