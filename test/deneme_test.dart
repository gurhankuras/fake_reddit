import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:reddit_clone/_presentation/core/app/feed_card.dart';
import 'package:reddit_clone/domain/core/server_failures.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';
import 'package:reddit_clone/domain/feed/i_feed_repository.dart';
import 'package:reddit_clone/domain/feed/i_feed_service.dart';
import 'package:reddit_clone/domain/feed_entry.dart';
import 'package:reddit_clone/domain/i_network_connectivity.dart';
import 'package:reddit_clone/infastructure/core/network_connectivity.dart';
import 'package:reddit_clone/infastructure/feed/feed_repository.dart';
import 'package:reddit_clone/infastructure/feed/feed_service.dart';
import 'deneme_test.mocks.dart';
// import 'deneme_test.mocks.dart';

@GenerateMocks([Dio, NetworkConnectivity])
void main() {
  // setUp(() {
  final INetworkConnectivity mockNetworkConnectivity =
      MockNetworkConnectivity();
  final Dio mockDio = MockDio();
  final IFeedRepository feedRepository =
      FeedRepository(dio: mockDio, network: mockNetworkConnectivity);
  // });

  group('FeedRepository', () {
    group('getNewsFeeds', () {
      test('should return [ServerFailure.hasNoConnection] if has no connection',
          () async {
        // arrange
        when(mockNetworkConnectivity.hasConnection())
            .thenAnswer((_) async => false);

        // act
        final failure = await feedRepository.getNewsFeed();

        // assert
        verify(mockNetworkConnectivity.hasConnection());
        verifyZeroInteractions(mockDio);
        expect(failure, equals(Left(ServerFailure.hasNoConnection())));
      });

      test(
          'should return list of [PostEntry] objects if has connection and has no errors',
          () async {
        const limit = 2;
        const page = 1;
        const url = 'http://localhost:4000/api/news';
        final expectedResponseData =
            List.generate(limit, (index) => mockPostEntry);
        final expectedResponse = Response(
          data: expectedResponseData,
          requestOptions: RequestOptions(path: url),
          statusCode: 200,
        );

        // arrange
        when(mockNetworkConnectivity.hasConnection())
            .thenAnswer((_) async => true);
        when(mockDio.get(
          url,
          queryParameters: {
            'page': page,
            'limit': limit,
          },
        )).thenAnswer((_) async => expectedResponse);

        // act
        final posts =
            await feedRepository.getNewsFeed(limit: limit, page: page);

        // assert
        verify(mockNetworkConnectivity.hasConnection());
        expect(posts, equals(Right(expectedResponseData)));
        expect(extractRightEither(posts).length, lessThanOrEqualTo(limit));
      });
    });
  });
}

U extractRightEither<T, U>(Either<T, U> either) {
  return either.fold(
    (l) => throw Exception('Cannot extract $either'),
    (r) => r,
  );
}
