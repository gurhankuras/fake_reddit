import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../infastructure/comment/fake_comment_service.dart';
import '../../infastructure/core/cache_service.dart';
import '../../injection.dart';
import '../post/post_comment/post_comment_bloc.dart';

class PostCommentBlocProvider extends StatelessWidget {
  final Widget child;
  final String postId;
  const PostCommentBlocProvider({
    Key? key,
    required this.child,
    required this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostCommentBloc>(param1: postId)
        ..add(PostCommentEvent.commentsFetchingStarted()),
      child: child,
    );
  }
}
