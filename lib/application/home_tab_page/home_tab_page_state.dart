part of 'home_tab_page_bloc.dart';

@freezed
class HomeTabPageState with _$HomeTabPageState {
  const factory HomeTabPageState({
    required bool hasReachedMax,
    required List<PostEntry> posts,
    required bool fetchingLoading,
    required bool refreshLoading,
    required bool morePostLoading,
    required int page,
  }) = _HomeTabPageState;

  factory HomeTabPageState.initial() => HomeTabPageState(
        hasReachedMax: false,
        posts: [],
        fetchingLoading: false,
        morePostLoading: false,
        refreshLoading: false,
        page: 1,
      );
}
