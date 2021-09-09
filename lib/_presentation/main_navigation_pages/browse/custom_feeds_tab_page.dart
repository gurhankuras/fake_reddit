import 'package:flutter/material.dart';

class CustomFeedsTabPage extends StatelessWidget {
  final Color color;
  const CustomFeedsTabPage({
    Key? key,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        height: 100,
        color: color,
        margin: EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }
}
