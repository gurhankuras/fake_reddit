import 'package:reddit_clone/domain/post/i_post_cache_tagger.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';
import 'package:reddit_clone/infastructure/core/cache_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPostCacheTagger)
class PostCacheTagger implements IPostCacheTagger {
  final CacheService cacheService;
  PostCacheTagger({
    required this.cacheService,
  });

  @override
  PostEntry tag(PostEntry post) {
    if (cacheService.prefs.getString(post.id) != null) {
      return post.copyWith(visited: true);
    }
    return post;
  }
}
