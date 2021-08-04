import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/domain/auth/i_auth_service.dart';
import 'package:reddit_clone/domain/auth/model/credentials.dart';
import 'package:reddit_clone/domain/auth/model/login_credentials.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/utility/app_logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  AuthBloc({required this.authService}) : super(const AuthState.initial()) {
    log.v('AuthBloc created!');
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      signedOut: (e) async* {
        authService.logOut();
        yield const AuthState.unauthenticated();
      },
      gotUserSignedIn: (e) async* {
        print('gotUserSignIn');

        // TODO
        final successOrFailure = await authService.checkIfUserHasTokens();
        yield* successOrFailure.fold(
          (l) async* {
            print(l);
            yield const AuthState.unauthenticated();
          },
          (r) async* {
            yield const AuthState.authenticated();
          },
        );
      },
      authCheckRequested: (e) async* {
        print('authCheckRequested');
        final failureOrSuccess = await authService.checkIfUserHasTokens();
        yield* failureOrSuccess.fold(
          (f) async* {
            yield AuthState.unauthenticated();
          },
          (_) async* {
            yield AuthState.authenticated();
          },
        );
      },
    );
  }
}
