part of 'home_tab_page_bloc.dart';

@freezed
class HomeTabPageEvent with _$HomeTabPageEvent {
  const factory HomeTabPageEvent.refreshRequested() = _RefreshRequested;
  const factory HomeTabPageEvent.loadMoreRequested() = _LoadMoreRequested;
  const factory HomeTabPageEvent.fetchingStarted() = _FetchingStarted;
}
