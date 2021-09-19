import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../size_config.dart';

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
