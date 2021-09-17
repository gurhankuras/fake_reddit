import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/domain/auth/model/user.dart';

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
      authCheckRequested: (e) async* {
        final userOr = await authService.getCurrentUser();
        yield* userOr.fold(
          (f) async* {
            print(f);
            yield AuthState.unauthenticated();
          },
          (user) async* {
            yield AuthState.authenticated(user);
          },
        );
      },
    );
  }
}
