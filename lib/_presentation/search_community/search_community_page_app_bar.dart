import 'package:flutter/material.dart';

import '../core/constants/colors.dart';
import '../core/app/search_bar_field.dart';

class SearchCommunityPageAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const SearchCommunityPageAppBar({Key? key}) : super(key: key);

  @override
  _SearchCommunityPageAppBarState createState() =>
      _SearchCommunityPageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(76.0);
}

class _SearchCommunityPageAppBarState extends State<SearchCommunityPageAppBar> {
  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom != 0;
  @override
  Widget build(BuildContext context) {
    print('BUUUUUUILD');
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 250),
      transform: Matrix4.translationValues(
          0, isKeyboardOpen ? -kToolbarHeight * 0.5 : 0, 0),
      child: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        leading: AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: isKeyboardOpen ? 0 : 1,
          child: CloseButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: isKeyboardOpen ? 0 : 1,
          child: Text(
            'Post to',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: 18,
                ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: SearchBarField(
                    onFocussed: () {
                      setState(() {
                        // focussed = true;
                      });
                    },
                    hintText: 'Search for a community',
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 250),
                  opacity: isKeyboardOpen ? 1 : 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onLongPressEnd: (_) => FocusScope.of(context).unfocus(),
                      onTap: () => FocusScope.of(context).unfocus(),
                      child: Text(
                        'Cancel',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.moreLightGrey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
