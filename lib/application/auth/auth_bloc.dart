import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/utility/log_init.dart';
import '../../domain/auth/model/user.dart';

import '../../domain/auth/i_auth_service.dart';
import '../../utility/app_logger.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  AuthBloc({
    required this.authService,
  }) : super(const AuthState.initial()) {
    logInit(AuthBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<Initial>(_onSignedOut);
  }

  FutureOr<void> _onAuthCheckRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOr = await authService.getCurrentUser();
    userOr.fold(
      (f) => emit(AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  FutureOr<void> _onSignedOut(Initial event, Emitter<AuthState> emit) async {
    authService.logOut();
    emit(const AuthState.unauthenticated());
  }
}
