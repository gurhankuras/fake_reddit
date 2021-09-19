import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/size_config.dart';
import '../../../../utility/app_logger.dart';

const _kCardBorderColor = AppColors.darkgreyBlack;

class VisitedCommunityInfo {
  final String members;
  final String about;
  final String name;
  final String avatar;
  final String backgroundImage;

  const VisitedCommunityInfo({
    required this.members,
    required this.about,
    required this.name,
    required this.avatar,
    required this.backgroundImage,
  });
}

const fakeVisitedCommInfo = VisitedCommunityInfo(
  members: '4.9M',
  about: 'a subreddit for gifs and videos that are next fucking level!',
  name: 'r/nextfuckinglevel',
  avatar:
      'https://www.nicepng.com/png/detail/805-8050103_michael-eisenbraun-web-developer-and-teacher-business-south.png',
  backgroundImage:
      'https://images.unsplash.com/photo-1630865769398-670d8de09d72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
);

class VisitedCommunity extends StatelessWidget {
  final double width;
  final VisitedCommunityInfo info;
  final double height;

  const VisitedCommunity({
    Key? key,
    required this.width,
    required this.info,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: _kCardBorderColor,
          width: 0.7,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: width,
      height: height,
      // color: AppColors.grey,
      margin: EdgeInsets.only(right: SizeConfig.screenWidthPercentage(2)),
      child: Stack(
        // fit: StackFit.loose,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: height / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    info.backgroundImage,
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: height / 50),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: AppColors.darkGrey,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: height / 6,
                      backgroundImage: NetworkImage(
                        info.avatar,
                      ),
                    ),
                  ),
                  SizedBox(height: height / 80),
                  FittedBox(
                    child: Text(
                      info.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: height / 80),
                  Text(
                    info.about,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(height: height / 80),
                  Text(
                    '${info.members} members',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.caption?.apply(
                          color: AppColors.moreLightGrey,
                          fontSizeFactor: 0.9,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: height / 20,
              right: width / 20,
              height: 20,
              width: 20,
              child: GestureDetector(
                onTap: () => log.i('clickk'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  // height: 20,
                  // width: 20,
                  child: FittedBox(
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
