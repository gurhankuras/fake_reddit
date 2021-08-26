import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchBarField extends StatelessWidget {
  final String hintText;
  final VoidCallback? onTap;
  final bool absorbing;
  final bool autofocus;
  final VoidCallback? onFocussed;
  const SearchBarField({
    Key? key,
    this.onTap,
    required this.hintText,
    this.absorbing = false,
    this.autofocus = false,
    this.onFocussed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.darkGrey,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: AppColors.lightGrey,
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: onTap,
                child: AbsorbPointer(
                  absorbing: absorbing,
                  child: FocusScope(
                    child: Focus(
                      onFocusChange: (value) {
                        if (value) onFocussed?.call();
                      },
                      child: TextField(
                        autofocus: autofocus,
                        cursorColor: AppColors.lightGrey,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: hintText,
                          hintStyle:
                              const TextStyle(color: AppColors.lightGrey),
                          fillColor: AppColors.darkGrey,
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
