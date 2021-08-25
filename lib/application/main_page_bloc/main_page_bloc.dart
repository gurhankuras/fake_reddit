import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../_presentation/core/app_snackbar.dart';

part 'main_page_bloc.freezed.dart';
part 'main_page_event.dart';
part 'main_page_state.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  final BuildContext context;
  MainPageBloc({
    required this.context,
  }) : super(const MainPageState());

  @override
  Stream<MainPageState> mapEventToState(
    MainPageEvent event,
  ) async* {
    yield* event.map(
      snackbarShowed: (e) async* {
        showSnack(
          message: 'Your post is live',
          context: context,
          button: TextButton(
            onPressed: () {
              // TODO
              // print('Pressed');
            },
            child: Text('VIEW'),
          ),
          indicatorColor: Colors.green,
        );
        yield state;
      },
    );
  }
}
