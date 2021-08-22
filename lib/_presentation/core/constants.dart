import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';

abstract class UIConstants {
  static const physics =
      AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics());

  static final MarkdownStyleSheet markdownStyleSheet = MarkdownStyleSheet(
    strong: TextStyle(color: AppColors.iron),
    h1: TextStyle(
      color: AppColors.iron,
      fontSize: 18,
      fontWeight: FontWeight.w900,
    ),
    h2: TextStyle(
      color: AppColors.iron,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
    h3: TextStyle(
      color: AppColors.iron,
      fontSize: 15,
      fontWeight: FontWeight.w900,
    ),
    h4: TextStyle(
      color: AppColors.iron,
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
    h5: TextStyle(
      color: AppColors.iron,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
    h6: TextStyle(
      decoration: TextDecoration.underline,
      color: AppColors.iron,
      fontSize: 13,
      fontWeight: FontWeight.normal,
    ),
    blockquoteDecoration: BoxDecoration(
      color: AppColors.lightBlack,
      border: Border(
          left: BorderSide(
        color: AppColors.lightBlack3,
        width: 2.5,
      )),
    ),
  );
}
