// ignore: file_names
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/app/extensions/string_fill_extension.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/modal_bottom_sheet/app_bottom_modal_sheet.dart';
import 'package:reddit_clone/routes/app_router.gr.dart';
import 'package:reddit_clone/application/post/create_post/create_post_bloc.dart';
import 'package:reddit_clone/domain/subreddit/subreddit_info.dart';
import 'package:reddit_clone/injection.dart';

class CreatePostPage extends StatelessWidget implements AutoRouteWrapper {
  final SubredditInfo community;

  const CreatePostPage({Key? key, required this.community}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreatePostBloc>(param1: community),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final feedTypeBar = SizeConfig.isKeyboardHidden(context)
    //     ? PostTypesSection(feedTypes: feedTypes)
    //     : MinimizedPostTypesBar(feedTypes: feedTypes);
    final bloc = context.read<CreatePostBloc>();

    return Scaffold(
      appBar: appBar(context, bloc),
      body: AutoRouter(),
    );
  }

  AppBar appBar(BuildContext context, CreatePostBloc bloc) {
    return AppBar(
      leading: _buildBackButton(context),
      actions: actions(context, bloc),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return _onNavigate<Widget>(
      context,
      onEditor: (router) => CloseButton(onPressed: () => router?.pop()),
      onOverview: (router) => AutoBackButton(),
    );
  }

  T _onNavigate<T>(
    BuildContext context, {
    required T Function(RoutingController? router) onEditor,
    required T Function(RoutingController? router) onOverview,
  }) {
    final innRouter = innerRouter(context);
    if (innRouter?.current.name == CreatePostEditorRoute.name) {
      return onEditor(innRouter);
    } else {
      return onOverview(innRouter);
    }
  }

  RoutingController? innerRouter(BuildContext context) =>
      context.router.innerRouterOf(CreatePostRoute.name);

  List<Widget> actions(BuildContext context, CreatePostBloc bloc) => [
        Center(
          child: BlocBuilder<CreatePostBloc, CreatePostState>(
            builder: (context, state) {
              final canProceed = context.watch<CreatePostBloc>().canProceed();

              return GestureDetector(
                onTap: canProceed ? () => next(context) : null,
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
                ),
              );
            },
          ),
        )
      ];

  void next(BuildContext context) {
    FocusScope.of(context).unfocus();
    _onNavigate(
      context,
      onEditor: (router) {
        router?.navigate(CreatePostEntryOverviewRoute(community: community));
      },
      onOverview: (router) {
        context.read<CreatePostBloc>().add(CreatePostEvent.feedPosted());
        AutoRouter.of(context).pop();
      },
    );
  }

  List<PostTypeData> get feedTypes => [
        PostTypeData(icon: Icons.text_fields, text: 'Text'),
        PostTypeData(icon: Icons.link, text: 'Link'),
        PostTypeData(icon: Icons.image_outlined, text: 'Image'),
        PostTypeData(icon: Icons.play_circle_outline, text: 'Video'),
        PostTypeData(icon: Icons.format_list_numbered_outlined, text: 'Poll'),
      ];
}

class PostTypeData {
  final IconData icon;
  final String text;

  PostTypeData({
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
