import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:injectable/injectable.dart';

import '../../domain/comment/comment_data.dart';
import '../../domain/comment/i_comment_service.dart';
import '../../domain/core/value_failure.dart';

class Range {
  final int begin;
  final int end;
  const Range(this.begin, this.end);

  get diff => end - begin;
}

@LazySingleton(as: ICommentService)
class FakeCommentService implements ICommentService {
  late final int depth;
  late final Range spreadRange;
  late final Random engine;
  late final Range commentParagraphRange;
  late final Range commentWordRange;
  late final Range topLevelCommentCountRange;
  late final Faker faker;

  FakeCommentService() {
    depth = 3;
    spreadRange = const Range(0, 5);
    commentParagraphRange = const Range(1, 3);
    commentWordRange = const Range(5, 100);
    topLevelCommentCountRange = const Range(1, 5);
    engine = Random();
    faker = Faker();
  }

  @override
  Future<Either<ValueFailure<String>, List<CommentData>>> fetchPostComments(
      String id) async {
    final delay = Future.delayed(const Duration(seconds: 2));
    final topLevelCommentCount = topLevelCommentCountRange.begin +
        engine.nextInt(topLevelCommentCountRange.diff);
    final comments = List.generate(topLevelCommentCount,
        (index) => _createTree(currentDepth: 0, expectedDepth: depth));
    await delay;
    return Future.value(right(comments));
    // return Future.value(left(ValueFailure.empty(failedValue: '')));
  }

  CommentData _createTree({int currentDepth = 0, required int expectedDepth}) {
    final comment = _createRandomComment();

    if (currentDepth < expectedDepth) {
      final spread = spreadRange.begin + engine.nextInt(spreadRange.diff);
      for (int i = 0; i < spread; ++i) {
        comment.comments.add(
          _createTree(
            currentDepth: currentDepth + 1,
            expectedDepth: expectedDepth,
          ),
        );
      }
    }
    return comment;
  }

  CommentData _createRandomComment() => CommentData(
        image: faker.image.image(random: true, keywords: ['internet']),
        text: lorem(
          words: commentWordRange.begin + engine.nextInt(commentWordRange.diff),
          paragraphs: commentParagraphRange.begin +
              engine.nextInt(commentParagraphRange.diff),
        ),
        username: faker.internet.userName(),
        date: '2h',
        upvotes: engine.nextInt(100),
        comments: [],
      );
}

// CommentData get fakeComment => CommentData(
//       text: lorem(paragraphs: 1, words: Random().nextInt(100)),
//       username: 'hellomother',
//       date: '4h',
//       upvotes: 23,
//       comments: [
//         CommentData(
//           upvotes: 50,
//           date: '5h',
//           text: lorem(
//             paragraphs: 1 + Random().nextInt(2),
//             words: Random().nextInt(100),
//           ),
//           username: 'niceee',
//           comments: [
//             CommentData(
//               upvotes: 3,
//               date: '5h',
//               text: lorem(
//                 paragraphs: 1 + Random().nextInt(2),
//                 words: Random().nextInt(100),
//               ),
//               username: 'niceee',
//               comments: [],
//             )
//           ],
//         ),
//         CommentData(
//           upvotes: 32,
//           date: '1h',
//           text: lorem(
//             paragraphs: 1 + Random().nextInt(2),
//             words: Random().nextInt(100),
//           ),
//           username: 'lastie',
//           comments: [],
//         )
//       ],
//     );

// final faker = Faker();

// class Node {
//   final String name;
//   final String comment;
//   final List<Node> children;
//   Node({
//     required this.name,
//     required this.comment,
//     required this.children,
//   });

//   @override
//   String toString() =>
//       'Node(name: $name, comment: $comment, children: $children)';
// }



// Node createTree(args, [int currentDepth = 0]) {
//   var node = Node(name: args.name(), comment: args.data(), children: []);

//   if (currentDepth < args.depth) {
//     for (var i = 0; i < args.spread; i++) {
//       node.children.add(createTree(args, currentDepth + 1));
//     }
//   }
//   return node;
// }

// Node treegen([int depth = 1, int spread = 1]) {
//   args.data = CommentData(
//       comments: [],
//       date: '3h',
//       text: lorem(
//         paragraphs: 1 + Random().nextInt(2),
//         words: Random().nextInt(100),
//       ),
//       upvotes: Random().nextInt(100),
//       username: faker.internet.userName());

//   return createTree(args);
// }

// var comments = treegen(1, 2);

// console.log(comments);
