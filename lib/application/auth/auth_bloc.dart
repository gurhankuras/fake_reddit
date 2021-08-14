import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_service.dart';
import '../../utility/app_logger.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

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
