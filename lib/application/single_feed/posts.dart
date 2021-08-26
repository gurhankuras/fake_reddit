import 'package:reddit_clone/domain/post/post_entry.dart';

class Posts {
  final List<PostEntry> _posts;

  Posts({
    required List<PostEntry> posts,
  }) : _posts = posts;

  get posts => _posts;

  updateCommentAndUpvotes(int index) {
    // final item = _posts?.elementAt(index);
    // _posts?.replaceRange(index, index + 1, []);
    _posts[index].commentCount = 100;
    _posts[index].upvotes = 10;
  }
}
