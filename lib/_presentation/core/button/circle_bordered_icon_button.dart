import 'package:flutter/material.dart';

class CircleBorderedIconButton extends StatelessWidget {
  const CircleBorderedIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        Icons.notifications_off,
        color: Colors.red,
      ),
    );
  }
}
