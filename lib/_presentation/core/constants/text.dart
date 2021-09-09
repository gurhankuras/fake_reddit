import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';

const xxxsmallSizeFactor = 0.55;
const xxsmallSizeFactor = 0.60;
const xsmallSizeFactor = 0.65;
const smallSizeFactor = 0.68;
const mediumSizeFactor = 0.7;
const largeSizeFactor = 0.72;
const xlSizeFactor = 0.75;
const xxlSizeFactor = 0.80;
const xxxlSizeFactor = 0.85;
const giantlSizeFactor = 0.90;

const smallWeightDelta = -1;
const normalWeightDelta = 0;
const mediumWeightDelta = 1;
const largeWeightDelta = 2;
const xlWeightDelta = 3;
const xxlWeightDelta = 4;

Widget smallNormalText(String text, {Color color = Colors.white}) =>
    AppHeaderText(
      text,
      fontSizeFactor: 0.68,
      fontWeightDelta: 0,
    );

Widget xxsThinText(String text, {Color color = Colors.white}) => AppHeaderText(
      text,
      fontSizeFactor: 0.60,
      fontWeightDelta: -1,
    );

final n = [
  // AppHeaderText(
  //   'Mod',
  //   fontSizeFactor: 0.68,
  //   fontWeightDelta: 0,
  // ),
  AppHeaderText(''),
  AppHeaderText(
    'SAVE',
    fontSizeFactor: 0.7,
    // color: state.hasAnyChanged
    //     ? Colors.blue
    //     : AppColors.lightGrey,
  ),
  // AppHeaderText(
  //   'item.name',
  //   fontSizeFactor: 0.68,
  //   fontWeightDelta: 0,
  // ),
  // AppHeaderText(
  //   'subtitle',
  //   fontSizeFactor: 0.60,
  //   fontWeightDelta: -1,
  //   color: AppColors.moreLightGrey,
  // ),
  AppHeaderText(
    'Recently visited communities',
    fontSizeFactor: 0.7,
    fontWeightDelta: -1,
  ),
  AppHeaderText(
    'Chat',
    fontSizeFactor: 0.85,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'CONVERSATIONS',
    // color: '_kChatListTextColor',
    fontSizeFactor: 0.70,
    fontWeightDelta: 4,
  ),
  AppHeaderText(
    'title',
    fontSizeFactor: 0.8,
    // color: _kChatListTextColor,
  ),
  AppHeaderText(
    'date',
    fontSizeFactor: 0.65,
    fontWeightDelta: 0,
    // color: _kChatListTextColor,
  ),
  AppHeaderText(
    'subtitle',
    fontSizeFactor: 0.70,
    fontWeightDelta: -1,
    // color: _kChatListTextColor,
  ),
  AppHeaderText(
    'reddit_chat_feedback',
    fontSizeFactor: 0.85,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'message.user.name',
    fontSizeFactor: 0.7,
  ),
  AppHeaderText('reddit_chat_feedback'),
  AppHeaderText(
    'redditor for ${3} y • ${548} karma',
    color: AppColors.moreLightGrey,
    fontSizeFactor: 0.72,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'Send me your feedback about chat. Send me funny stories. Send me your secrets',
    color: AppColors.moreLightGrey,
    fontSizeFactor: 0.65,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'widget.text',
    fontSizeFactor: 0.6,
    color: AppColors.iron,
    fontWeightDelta: 2,
  ),
  AppHeaderText(
    'post.subreddit.toSubreddit',
    fontSizeFactor: 0.8,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'BEST COMMENTS',
    fontSizeFactor: 0.55,
    color: AppColors.lightGrey,
  ),
  AppHeaderText(
    'entry.contentText',
    fontWeightDelta: 0,
    fontSizeFactor: 0.9,
    // color: entry.visited && !inPost ? AppColors.grey : Colors.white,
  ),
  // AppHeaderText(
  //   'imgur.com',
  //   fontSizeFactor: 0.6,
  //   fontWeightDelta: -1,
  // ),
  AppHeaderText(
    'entry.contentText',
    fontWeightDelta: 0,
    fontSizeFactor: 0.9,
    // color: entry.visited && !inPost ? AppColors.grey : Colors.white,
  ),
  AppHeaderText(
    'Settings',
    fontSizeFactor: 0.85,
  ),
  AppHeaderText(
    'text',
    fontSizeFactor: 0.55,
    color: AppColors.moreLightGrey,
  ),
  AppHeaderText(
    'subredditInfo.name.toSubreddit',
    fontSizeFactor: 0.85,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'description',
    fontSizeFactor: 0.68,
    fontWeightDelta: -1,
  ),
  AppHeaderText(
    'memberCount Sacrifices • onlineCount With Grasses on',
    color: AppColors.moreLightGrey,
    fontSizeFactor: 0.65,
    fontWeightDelta: -1,
  ),
  AppHeaderText(
    'entry.subreddit.toSubreddit',
    fontSizeFactor: 0.8,
    fontWeightDelta: 0,
  ),
  AppHeaderText(
    'entry.contentText',
    color: Colors.white,
    fontSizeFactor: 0.8,
  ),
];
