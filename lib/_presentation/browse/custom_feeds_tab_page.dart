import 'package:flutter/material.dart';

class CustomFeeds extends StatelessWidget {
  const CustomFeeds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        height: 100,
        color: Colors.red,
        margin: EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }
}
