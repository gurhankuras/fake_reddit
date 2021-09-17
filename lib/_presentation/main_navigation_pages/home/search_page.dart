import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/app/search_bar_field.dart';

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
              onLongPressEnd: (_) => AutoRouter.of(context).pop(),
              onTap: () => AutoRouter.of(context).pop(),
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
