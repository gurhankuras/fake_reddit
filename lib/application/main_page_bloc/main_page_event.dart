part of 'main_page_bloc.dart';

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.snackbarShowed() = _SnackbarShowed;
}
