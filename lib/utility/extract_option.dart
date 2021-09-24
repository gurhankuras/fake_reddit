import 'package:dartz/dartz.dart';

T extractOption<T>(Option<T> option) {
  return option.fold(
    () => throw Exception('Cannot extracted $T. Option is none'),
    (a) => a,
  );
}
