import 'package:flutter/material.dart';

import '../app/colors.dart';

class AppTextInput extends StatelessWidget {
  final String hintText;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final TextInputType? textInputType;
  final TextInputAction textInputAction;
  final TextStyle? textStyle;
  final bool obscureText;
  final Widget? suffixWidget;
  final TextEditingController? controller;
  // final Widget Function(T state)? suffixWidgetBuilder;
  // final Widget? errorSuffix;
  // final Widget? successSuffix;
  final void Function(String value) onChanged;

  const AppTextInput({
    Key? key,
    // this.errorSuffix,
    // this.successSuffix,
    required this.hintText,
    this.borderRadius,
    this.padding,
    this.textInputType,
    this.textInputAction = TextInputAction.next,
    this.textStyle,
    this.obscureText = false,
    this.suffixWidget,
    this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 4.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
            child: TextFormField(
              onChanged: onChanged,
              controller: controller,
              style: textStyle,
              // onChanged: ,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: textInputType,
              textInputAction: textInputAction,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
                      color: Colors.grey[500],
                    ),
                filled: true,
                fillColor: AppColors.lightBlack2,
                border: InputBorder.none,
                suffix: Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
              ),
            ),
          ),
          // Icon(Icons.remove_red_eye)
          Positioned(
              bottom: 0,
              top: 0,
              right: 10,
              child: suffixWidget ?? SizedBox.shrink())
        ],
      ),
    );
  }
}
