import 'package:flutter/material.dart';

import '../core/constants/colors.dart';
import '../core/size_config.dart';

class AddComment extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController? textController;
  final String hintText;
  const AddComment({
    Key? key,
    this.onChanged,
    this.textController,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CollapsedAddComment(
      onChanged: onChanged,
      textController: textController,
      hintText: hintText,
    );
  }
}

class _CollapsedAddComment extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController? textController;
  final String hintText;

  const _CollapsedAddComment({
    Key? key,
    this.onChanged,
    this.textController,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      color: AppColors.lightBlack,
      child: Row(
        children: [
          // const CircleAvatar(
          //   backgroundImage: NetworkImage(
          //     'https://preview.redd.it/yuaom7xz9xi11.jpg?width=1057&format=pjpg&auto=webp&s=dd60a5c152f0432340bfa2596927208a479170b4',
          //   ),
          // ),
          SizedBox(width: SizeConfig.screenWidthPercentage(2)),
          Expanded(
            child: TextField(
              minLines: 1, //Normal textInputField will be displayed
              maxLines: 4,
              controller: textController,
              onChanged: onChanged,
              decoration: InputDecoration(
                isDense: true,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
                      color: AppColors.lightGrey,
                    ),
                fillColor: AppColors.darkGrey,
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// class ExpandedAddComment extends StatelessWidget {
//   const ExpandedAddComment({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         decoration: const BoxDecoration(
//           color: AppColors.lightBlack,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//         ),
//         width: double.infinity,
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 CloseButton(onPressed: () => FocusScope.of(context).unfocus()),
//                 const Expanded(
//                   child: AppHeaderText(
//                     'Please review community rules',
//                     color: AppColors.lightGrey,
//                     fontSizeFactor: 0.65,
//                   ),
//                 ),
//                 // Spacer(),
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                       decoration: BoxDecoration(
//                           color: AppColors.lightBlack3,
//                           borderRadius: BorderRadius.circular(
//                             10,
//                           )),
//                       padding: EdgeInsets.all(6),
//                       child: const AppHeaderText(
//                         'RULES',
//                         fontSizeFactor: 0.7,
//                         fontWeightDelta: 0,
//                       )),
//                 )
//               ],
//             ),
//             Expanded(
//               child: TextField(
//                 maxLines: 5,
//                 style: Theme.of(context).textTheme.bodyText2,
//                 decoration: InputDecoration(
//                   isDense: true,
//                   hintText: 'Add a comment',
//                   hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
//                         color: AppColors.lightGrey,
//                       ),
//                   fillColor: AppColors.darkGrey,
//                   filled: true,
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(Icons.attachment),
//                   TextButton(onPressed: () {}, child: const Text('REPLY'))
//                 ],
//               ),
//             )
//           ],
//         ),
//         // height: 100,
//       ),
//     );
//   }
// }