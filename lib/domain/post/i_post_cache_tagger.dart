import 'package:reddit_clone/domain/post/post_entry.dart';

abstract class IPostCacheTagger {
  PostEntry tag(PostEntry post);
}
