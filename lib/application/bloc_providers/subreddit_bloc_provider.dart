import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/subreddit/subreddit_page.dart';
import 'package:reddit_clone/application/subreddit/subreddit_bloc.dart';
import 'package:reddit_clone/injection.dart';

class SubredditBlocProvider extends StatelessWidget {
  const SubredditBlocProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SubredditBloc>()..add(SubredditEvent.feedFetchingStarted()),
      child: SubredditPage(),
    );
  }
}
