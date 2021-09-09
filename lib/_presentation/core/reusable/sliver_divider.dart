import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

class SliverDivider extends StatelessWidget {
  const SliverDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.lightBlack,
        child: Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.screenWidthPercentage(3),
            bottom: SizeConfig.screenWidthPercentage(2),
          ),
          child: Container(
            width: double.infinity,
            height: 0.7,
            color: AppColors.darkgreyBlack,
          ),
        ),
      ),
    );
  }
}
