import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:mime_type/mime_type.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:reddit_clone/domain/post/i_post_cache_tagger.dart';

import 'package:reddit_clone/infastructure/feed/fake_feed_service.dart';

import '../../domain/core/value_failure.dart';
import '../../domain/i_token_cache_service.dart';
import '../../domain/post/post_entry.dart';
import '../../domain/subreddit/i_subreddit_service.dart';
import '../../domain/subreddit/subreddit_info.dart';
import '../../injection.dart';
import '../../utility/app_logger.dart';
import '../../utility/mock_objects.dart';
import '../core/connectivity_dio_checker.dart';
import '../core/token_dio_interceptor.dart';

@LazySingleton(as: ISubredditService)
class SubredditService implements ISubredditService {
  final Dio dio;
  final IPostCacheTagger tagger;
  SubredditService({
    required this.dio,
    required this.tagger,
  }) {
    kDebugMode
        ? dio.interceptors.add(PrettyDioLogger(
            error: true,
            logPrint: log.i,
            maxWidth: 200,
            request: true,
            requestBody: true,
            requestHeader: true,
            responseBody: true,
            responseHeader: true,
            compact: false,
          ))
        : null;
    dio.interceptors.add(getIt<ConnectivityDioChecker>());
    dio.interceptors.add(
        TokenDioInterceptor(tokenCacheService: getIt<ITokenCacheService>()));
  }
  @override
  Future<Either<ValueFailure<String>, Unit>> changeAvatar(
    String communityId,
    Uint8List image,
  ) async {
    const endpoint = '/avatar';
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;

    final f = await File(p.join(tempPath, 'yeni.jpeg')).writeAsBytes(image);
    // final mime = mime(f.path);
    final mimeS = mime(f.path)!.split('/');
    final type = mimeS[0];
    final subtype = mimeS[1];

    var formData = FormData.fromMap({
      'name': 'wendux',
      'age': 25,
      'productImage': await MultipartFile.fromFile(f.path,
          contentType: MediaType(type, subtype))
    });

    try {
      final response = await dio.post(endpoint, data: formData);
      if (response.data is Map) {
        print(response.data);
        return right(unit);
      }
      return left(ValueFailure.empty(failedValue: ''));
    } catch (e) {
      return left(ValueFailure.empty(failedValue: ''));
    }
  }

  @override
  Future<Either<ValueFailure<String>, SubredditInfo>> getSubredditInfo(
      {required String subredditName}) async {
    // await Future.delayed(Duration(seconds: 3));
    return Future.value(
      right(
        SubredditInfo(
          isNSFW: false,
          onlineCount: 301,
          name: subredditName,
          avatar:
              'https://styles.redditmedia.com/t5_23ty4q/styles/profileIcon_vden2tg74d051.jpg?width=256&height=256&crop=256:256,smart&s=54e523221183c71419c0cadc616a13418f0c92ad',
          backgroundImage:
              'https://styles.redditmedia.com/t5_398od/styles/bannerBackgroundImage_0ahx0fsatg911.png?width=4000&s=1bd3c581711abf5b8e6cdc00af23a0f67b3bd677',
          description:
              'A place to post absurd content related to Berserk. Official /r/Berserk mem depository',
          memberCount: 72456,
        ),
      ),
    );
  }

  @override
  Future<Either<ValueFailure<String>, List<PostEntry>>> getPosts(
      {required String subredditName, int page = 0}) async {
    // await Future.delayed(Duration(seconds: 3));
    return Future.value(
      right(mockMixedPosts.map((post) => tagger.tag(post)).toList()),
    );
    // return Future.value(left(ValueFailure.empty(failedValue: '')));
  }
}
