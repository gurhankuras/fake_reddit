import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final String name;

  const UserName({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO:
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'u/$name',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Icon(Icons.expand_more)
          ],
        ),
      ),
    );
  }
}
