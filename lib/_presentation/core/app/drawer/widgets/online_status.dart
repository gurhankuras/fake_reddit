import 'package:flutter/material.dart';

import '../../colors.dart';

class OnlineStatus extends StatefulWidget {
  const OnlineStatus({
    Key? key,
  }) : super(key: key);

  @override
  _OnlineStatusState createState() => _OnlineStatusState();
}

class _OnlineStatusState extends State<OnlineStatus> {
  bool isOnline = true;

  String get onlineText => isOnline ? 'On' : 'Off';
  void toggleState() {
    setState(() {
      isOnline = !isOnline;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = isOnline ? AppColors.green : AppColors.lightGrey;
    return GestureDetector(
      onTap: toggleState,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isOnline)
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Online Status: $onlineText',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: color, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
