import 'package:flutter/material.dart';
import '../core/app/colors.dart';
import '../core/app/search_bar_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const SearchBarField(
          hintText: 'Search',
          autofocus: true,
        ),
        actions: [
          Center(
            child: GestureDetector(
              onLongPressEnd: (_) => Navigator.of(context).pop(),
              onTap: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: AppColors.moreLightGrey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
