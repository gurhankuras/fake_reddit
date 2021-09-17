import 'package:flutter/material.dart';

class MyEmptyPage extends StatelessWidget {
  const MyEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
