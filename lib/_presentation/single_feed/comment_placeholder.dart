import 'package:flutter/material.dart';
import '../core/app/colors.dart';
import 'package:shimmer/shimmer.dart';

class CommentPlaceHolder extends StatelessWidget {
  const CommentPlaceHolder({Key? key}) : super(key: key);
  static const double _smallHeight = 15;
  static const double _bigHeight = 25;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 35),
        child: Shimmer.fromColors(
          period: const Duration(seconds: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _CommentPlaceholderHead(smallHeight: _smallHeight),
              const SizedBox(height: 3),
              const _CommentPlaceholderBar(bigHeight: _bigHeight),
              const _CommentPlaceholderBar(bigHeight: _bigHeight),
              const SizedBox(height: 3),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: _smallHeight,
                width: 100,
              ),
            ],
          ),
          baseColor: AppColors.darkGrey,
          highlightColor: AppColors.lightBlack,
        ));
  }
}

class _CommentPlaceholderHead extends StatelessWidget {
  const _CommentPlaceholderHead({
    Key? key,
    required double smallHeight,
  })  : _smallHeight = smallHeight,
        super(key: key);

  final double _smallHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: AppColors.darkGrey, shape: BoxShape.circle),
          // width: 20,
          height: _smallHeight,
          width: _smallHeight,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(10),
            ),

            // width: 20,
            height: _smallHeight,
            width: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            // width: 20,
            height: _smallHeight,
            width: 50,
          ),
        ),
      ],
    );
  }
}

class _CommentPlaceholderBar extends StatelessWidget {
  const _CommentPlaceholderBar({
    Key? key,
    required double bigHeight,
  })  : _bigHeight = bigHeight,
        super(key: key);

  final double _bigHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(5),
        ),
        // width: 20,
        height: _bigHeight,
        width: double.infinity,
      ),
    );
  }
}
