import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/application/main_page_bloc/main_page_bloc.dart';

import 'post_to_community_suggestion_tile.dart';
import 'search_community_page_app_bar.dart';

class PostFeedSearchPage extends StatelessWidget {
  const PostFeedSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.read<MainPageBloc>());

    return Scaffold(
      appBar: const SearchCommunityPageAppBar(),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              PostToCommunitySuggestionTile(community: mockSuggestion)),
    );
  }
}
