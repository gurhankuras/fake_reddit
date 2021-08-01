import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/domain/auth/i_auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  AuthBloc({required this.authService}) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      signedOut: (e) async* {
        authService.signOut();
        yield const AuthState.unauthenticated();
      },
      gotUserSignedIn: (e) async* {
        // TODO
        final successOrFailure =
            await authService.signIn(email: '', password: '');
        yield* successOrFailure.fold(
          (l) async* {
            yield const AuthState.unauthenticated();
          },
          (r) async* {
            yield const AuthState.authenticated();
          },
        );
      },
      authCheckRequested: (e) async* {
        // TODO
        add(const AuthEvent.gotUserSignedIn());
      },
    );
  }
}
