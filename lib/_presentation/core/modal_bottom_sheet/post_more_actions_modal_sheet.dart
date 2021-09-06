import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/app_snackbar.dart';
import 'package:reddit_clone/_presentation/core/modal_bottom_sheet/app_bottom_modal_sheet.dart';
import 'package:reddit_clone/domain/post/link_post_entry.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';
import 'package:reddit_clone/utility/app_logger.dart';

Future<void> showPostMoreSheet(BuildContext pageContext, PostEntry post) async {
  print(post.runtimeType);
  final action = await showModalBottomSheet<String?>(
    context: pageContext,
    enableDrag: false,
    builder: (BuildContext context) {
      return AppModalBottomSheet(
        tiles: [
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.share,
            text: 'Share',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.bookmark_outline,
            text: 'Save',
          ),
          if (post is LinkPostEntry)
            ModelSheetTile(
              onAction: () => log.i('onTap!'),
              icon: Icons.open_in_browser,
              text: 'Open in default browser',
            ),
          ModelSheetTile(
            onAction: () {
              FlutterClipboard.copy(post.contentText).then((_) async {
                Navigator.pop(context, 'copy');
              });
            },
            icon: Icons.copy_all_outlined,
            text: 'Copy text',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.flag_outlined,
            text: 'Report',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.block_outlined,
            text: 'Block User',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.remove_red_eye_outlined,
            text: 'Hide',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.call_missed_outgoing,
            text: 'Crosspost to a community',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.chat_outlined,
            text: 'Share to chat',
          ),
        ],
      );
    },
  );
  if (action == 'copy') {
    showSnack(
      message: 'Your copy is ready for pasta!',
      context: pageContext,
      indicatorColor: Colors.green,
    );
  }
}