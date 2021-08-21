import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/_presentation/core/app/feed_card.dart';
import 'package:reddit_clone/domain/feed_entry.dart';

part 'home_tab_page_event.dart';
part 'home_tab_page_state.dart';
part 'home_tab_page_bloc.freezed.dart';

class HomeTabPageBloc extends Bloc<HomeTabPageEvent, HomeTabPageState> {
  HomeTabPageBloc() : super(HomeTabPageState.initial());

  @override
  Stream<HomeTabPageState> mapEventToState(
    HomeTabPageEvent event,
  ) async* {
    yield* event.map(
      refreshRequested: (e) async* {
        yield state.copyWith(refreshLoading: true);
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(
          posts: [
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
          ],
          refreshLoading: false,
        );
      },
      loadMoreRequested: (e) async* {
        yield state.copyWith(morePostLoading: true);
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(
          posts: List.of(state.posts)
            ..addAll([
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
            ]),
          morePostLoading: false,
        );
      },
      fetchingStarted: (e) async* {
        yield state.copyWith(fetchingLoading: true);
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(
          posts: List.of(state.posts)
            ..addAll([
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
            ]),
          fetchingLoading: false,
        );
      },
    );
  }
}
