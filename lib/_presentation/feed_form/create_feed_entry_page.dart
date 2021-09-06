import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/create_feed_bloc.dart';
import '../../domain/subreddit/subreddit_info.dart';
import '../../routes.dart';
import '../core/modal_bottom_sheet/app_bottom_modal_sheet.dart';
import '../core/constants/colors.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/size_config.dart';
import '../post_feed/create_feed_entry_overview_page.dart';
import 'feed_editor.dart';
import 'feed_types_sections.dart';
import 'minimized_feed_types_bar.dart';

class CreateFeedEntryPage extends StatelessWidget {
  final SubredditInfo community;

  const CreateFeedEntryPage({Key? key, required this.community})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final feedTypeBar = SizeConfig.isKeyboardHidden(context)
        ? FeedTypesSection(feedTypes: feedTypes)
        : MinimizedFeedTypesBar(feedTypes: feedTypes);
    final bloc = context.read<CreateFeedBloc>();
    // log.d('CreateFeedEntryPage builds');
    return Scaffold(
      appBar: appBar(context, bloc),
      body: Container(
        color: AppColors.lightBlack,
        child: Column(
          children: [
            ChangeCommunityBar(community: community),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FeedEditor(),
              ),
            ),
            feedTypeBar
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context, CreateFeedBloc bloc) {
    return AppBar(
      leading: CloseButton(
        onPressed: () {
          Navigator.of(context)
              .popUntil((route) => route.settings.name == Routes.bottomNavPage);
        },
      ),
      actions: actions(context, bloc),
    );
  }

  List<Widget> actions(BuildContext context, CreateFeedBloc bloc) => [
        Center(
          child: BlocBuilder<CreateFeedBloc, CreateFeedState>(
            builder: (context, state) {
              final canProceed = context.watch<CreateFeedBloc>().canProceed();

              return GestureDetector(
                  // onLongPressEnd: (_) =>
                  onTap: canProceed
                      ? () {
                          FocusScope.of(context).unfocus();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BlocProvider.value(
                                value: bloc,
                                child: CreateFeedEntryOverviewPage(
                                    community: community),
                              ),
                            ),
                          );
                        }
                      : null,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: canProceed ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Next',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: canProceed
                              ? Colors.white
                              : AppColors.moreLightGrey),
                    ),
                  ));
            },
          ),
        )
      ];

  List<FeedTypeData> get feedTypes => [
        FeedTypeData(icon: Icons.text_fields, text: 'Text'),
        FeedTypeData(icon: Icons.link, text: 'Link'),
        FeedTypeData(icon: Icons.image_outlined, text: 'Image'),
        FeedTypeData(icon: Icons.play_circle_outline, text: 'Video'),
        FeedTypeData(icon: Icons.format_list_numbered_outlined, text: 'Poll'),
      ];
}

class FeedTypeData {
  final IconData icon;
  final String text;

  FeedTypeData({
    required this.icon,
    required this.text,
  });
}

class ChangeCommunityBar extends StatelessWidget {
  const ChangeCommunityBar({
    Key? key,
    required this.community,
  }) : super(key: key);

  final SubredditInfo community;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => print('tap tap'),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(community.avatar)),
                const SizedBox(width: 10),
                Text(community.name.toSubreddit),
                const Icon(Icons.expand_more)
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text('RULES'),
          )
        ],
      ),
    );
  }
}

Future<bool?> Function() showF(BuildContext context) {
  return () async => showModalBottomSheet<bool?>(
        context: context,
        enableDrag: true,
        // isScrollControlled: true,
        backgroundColor: AppColors.lightBlack2,

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (context) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Change Post Type',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                'Some of your post will be deleted if you continue.',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: AppColors.moreLightGrey),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        flex: 5,
                        child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(false),
                            child: Text(
                              'Cancel',
                              textAlign: TextAlign.center,
                            ))),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 5,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: Text('Continue'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red, shape: StadiumBorder()),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}

// Future<int?> Function() showDays(BuildContext context) {
//   return () async => showModalBottomSheet<int?>(
//         context: context,
//         enableDrag: false,
//         builder: (BuildContext context) {
//           return StatefulBuilder(
//             builder: (context, setState) {
//               return AppModalBottomSheet(
//                 tiles: [
//                   DaysRadioList(modalSetState: setState),
//                 ],
//               );
//             },
//           );
//         },
//       );
// }

Future<int?> Function(Days) showDays(BuildContext context) {
  return (Days blocCurrentDay) async => showModalBottomSheet<int?>(
        context: context,
        enableDrag: false,
        builder: (BuildContext context) {
          Days currentDay = blocCurrentDay;
          Color color = Colors.white;

          return StatefulBuilder(
            builder: (context, setState) {
              return AppModalBottomSheet(
                tiles: [
                  DaysRadioList(
                    currentDay: currentDay,
                    color: color,
                    onChanged: (day) {
                      setState(() {
                        currentDay = day!;
                      });

                      Future.delayed(Duration(milliseconds: 150), () {
                        Navigator.of(context).pop(currentDay.index + 1);
                      });
                    },
                  ),
                ],
              );
            },
          );
        },
      );
}

class DaysRadioList extends StatelessWidget {
  final Color color;
  final Days currentDay;
  final void Function(Days? currentDay) onChanged;

  const DaysRadioList({
    Key? key,
    required this.color,
    required this.currentDay,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Days.values.reversed
          .map(
            (day) => RadioListTile<Days>(
              // activeColor: Colors.white,
              dense: true,
              activeColor: color,
              title: Text('${day.index + 1} day'),
              value: day,
              groupValue: currentDay,
              onChanged: onChanged,
            ),
          )
          .toList(),
    );
  }
}

enum Days { one, two, three, four, five, six, seven }

// class DaysRadioList extends StatefulWidget {
//   final void Function(void Function()) modalSetState;
//   const DaysRadioList({
//     Key? key,
//     required this.modalSetState,
//   }) : super(key: key);

//   @override
//   _DaysRadioListState createState() => _DaysRadioListState();
// }

// class _DaysRadioListState extends State<DaysRadioList> {
//   // @override
//   // void didUpdateWidget(covariant DaysRadioList oldWidget) {
//   //   print('didUpdateWidget');
//   //   super.didUpdateWidget(oldWidget);
//   // }

//   // @override
//   // void didChangeDependencies() {
//   //   print('didUpdateWidget');

//   //   super.didChangeDependencies();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     Days currentDay = Days.three;
//     Color color = Colors.white;

//     return Column(
//       children: Days.values.reversed
//           .map(
//             (day) => RadioListTile<Days>(
//               // activeColor: Colors.white,
//               dense: true,
//               activeColor: color,
//               title: Text('${day.index + 1} day'),
//               value: day,
//               groupValue: currentDay,
//               onChanged: (Days? value) {
//                 setState(() {
//                   currentDay = value!;
//                   color = Colors.pink;
//                 });
//                 widget.modalSetState(() {
//                   currentDay = value!;
//                   color = Colors.pink;
//                 });
//                 // Navigator.of(context).pop(value!.index);
//                 // setState(() {
//                 //   _character = value;
//                 // });
//               },
//             ),
//           )
//           .toList(),
//     );
//   }
// }
