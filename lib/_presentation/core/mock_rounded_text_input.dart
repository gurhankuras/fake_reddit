import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

class MockRoundedTextInput extends StatelessWidget {
  final double? width;
  final double height;
  final String text;

  const MockRoundedTextInput({
    Key? key,
    this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.lightBlack2,
        borderRadius: BorderRadius.circular(
          SizeConfig.screenWidthPercentage(4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.screenWidthPercentage(4),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AppHeaderText(
            text,
            fontWeightDelta: -1,
            fontSizeFactor: 0.7,
            color: AppColors.moreLightGrey,
          ),
        ),
      ),
    );
  }
}
