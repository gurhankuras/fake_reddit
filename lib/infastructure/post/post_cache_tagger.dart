import 'package:injectable/injectable.dart';

import '../../domain/post/i_post_cache_tagger.dart';
import '../../domain/post/post_entry.dart';
import '../core/cache_service.dart';

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
