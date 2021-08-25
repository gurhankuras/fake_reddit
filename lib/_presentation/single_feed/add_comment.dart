import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

class AddComment extends StatefulWidget {
  const AddComment({
    Key? key,
  }) : super(key: key);

  @override
  _AddCommentState createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  @override
  Widget build(BuildContext context) {
    bool collapsed = true;

    // print(MediaQuery.of(context).viewInsets.bottom);
    return
        // MediaQuery.of(context).viewInsets.bottom == 0
        // ? _CollapsedAddComment()
        // :
        // ExpandedAddComment();
        _CollapsedAddComment();
  }
}

class ExpandedAddComment extends StatefulWidget {
  const ExpandedAddComment({
    Key? key,
  }) : super(key: key);

  @override
  _ExpandedAddCommentState createState() => _ExpandedAddCommentState();
}

class _ExpandedAddCommentState extends State<ExpandedAddComment>
    with SingleTickerProviderStateMixin {
  double? startPosition;
  double? currentPosition;
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (details) {
        startPosition = details.globalPosition.dy;
        print(startPosition);
      },
      onVerticalDragUpdate: (details) {
        currentPosition = details.globalPosition.dy;
        _controller.value = (SizeConfig.screenHeight - currentPosition!) /
            SizeConfig.screenHeight;
        setState(() {});
        // print(_controller.value);
      },
      onVerticalDragEnd: (details) {
        if (startPosition! - currentPosition! > 20) {
          _controller.value = 1.0;
          _controller.forward();
          print('OK');
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.lightBlack,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                CloseButton(onPressed: () => FocusScope.of(context).unfocus()),
                const Expanded(
                  child: AppHeaderText(
                    'Please review community rules',
                    color: AppColors.lightGrey,
                    fontSizeFactor: 0.65,
                  ),
                ),
                // Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.lightBlack3,
                          borderRadius: BorderRadius.circular(
                            10,
                          )),
                      padding: EdgeInsets.all(6),
                      child: const AppHeaderText(
                        'RULES',
                        fontSizeFactor: 0.7,
                        fontWeightDelta: 0,
                      )),
                )
              ],
            ),
            Expanded(
              child: TextField(
                maxLines: 5,
                style: Theme.of(context).textTheme.bodyText2,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Add a comment',
                  hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
                        color: AppColors.lightGrey,
                      ),
                  fillColor: AppColors.darkGrey,
                  filled: true,
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.attachment),
                  TextButton(onPressed: () {}, child: const Text('REPLY'))
                ],
              ),
            )
          ],
        ),
        // height: 100,
      ),
    );
  }
}

class _CollapsedAddComment extends StatelessWidget {
  const _CollapsedAddComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      color: AppColors.lightBlack,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://preview.redd.it/yuaom7xz9xi11.jpg?width=1057&format=pjpg&auto=webp&s=dd60a5c152f0432340bfa2596927208a479170b4',
            ),
          ),
          SizedBox(width: SizeConfig.screenWidthPercentage(2)),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Add a comment',
              hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
                    color: AppColors.lightGrey,
                  ),
              fillColor: AppColors.darkGrey,
              filled: true,
              border: InputBorder.none,
            ),
          )),
        ],
      ),
    );
  }
}
