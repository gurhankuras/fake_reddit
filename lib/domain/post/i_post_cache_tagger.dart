import 'post_entry.dart';

abstract class IPostCacheTagger {
  PostEntry tag(PostEntry post);
}
