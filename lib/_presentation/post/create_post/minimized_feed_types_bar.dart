import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/create_post/create_post_bloc.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable/filled_circle_icon.dart';
import 'create_post_page.dart';

class MinimizedPostTypesBar extends StatelessWidget {
  final List<PostTypeData> feedTypes;

  const MinimizedPostTypesBar({
    Key? key,
    required this.feedTypes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.lightBlack,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: MinimizedOptions(feedTypes: feedTypes),
              ),
            ),
            // Spacer(),
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Icon(Icons.expand_more),
            )
          ],
        ),
      ),
    );
  }
}

class MinimizedOptions extends StatelessWidget {
  const MinimizedOptions({
    Key? key,
    required this.feedTypes,
  }) : super(key: key);

  final List<PostTypeData> feedTypes;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePostBloc, CreatePostState>(
      buildWhen: (previous, current) => previous.feedType != current.feedType,
      builder: (context, state) {
        return Row(
          children: List.generate(
            feedTypes.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () => context.read<CreatePostBloc>().add(
                      CreatePostEvent.feedTypeChanged(
                        index: index,
                        autofocus: true,
                        showDialog: showF(context),
                      ),
                    ),
                child: FilledCircleIcon(
                  selected: index == state.feedType.index,
                  padding: EdgeInsets.all(5),
                  icon: Icon(
                    feedTypes[index].icon,
                    size: 18,
                  ),
                  selectedColor: Colors.blue[700]!,
                  unselectedColor: Colors.transparent,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
