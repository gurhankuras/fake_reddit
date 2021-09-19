import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/login_form/login_form_bloc.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../domain/i_snackbar_service.dart';
import '../../injection.dart';
import '../../routes/app_router.gr.dart';
import '../core/reusable/app_text_input.dart';
import 'auth_page.dart';
import 'password_text_input.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  // final Animation<double> animation;
  const LoginPage({
    Key? key,
    // required this.animation,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginFormBloc(
        authBloc: context.read<AuthBloc>(),
        authService: getIt<IAuthService>(),
        snackService: getIt<ISnackbarService>(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous is Unauthenticated && current is Authenticated,
      listener: (context, state) {
        state.maybeMap(
          authenticated: (_) => AutoRouter.of(context).pop(),
          orElse: () => null,
        );
      },
      child: AuthPage(
        auth: AuthPageEnum.login,
        onAppleAuthPressed: () {},
        onGoogleAuthPressed: () => context
            .read<LoginFormBloc>()
            .add(const LoginFormEvent.googleLoginPressed()),
        bottomSheet: continueButton(),
        actionText: 'SIGN UP',
        onActionTap: () => AutoRouter.of(context).popAndPush(SignUpRoute()),
        headerText: 'Log in',
        textFields: [
          AppTextInput(
            hintText: 'Username',
            onChanged: (value) {
              // TODO replace with loginbloc
              context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.usernameChanged(value));
            },
          ),
          PasswordTextInput(
            onChanged: (value) => context
                .read<LoginFormBloc>()
                .add(LoginFormEvent.passwordChanged(value)),
          ),
        ],
        // animation: animation,
      ),
    );
  }

// TODO replace with loginbloc
  BlocBuilder<LoginFormBloc, LoginFormState> continueButton() {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
          previous.failure != current.failure ||
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return PersistentContinueButton(
          // animation: animation,
          isLoading: state.isSubmitting,
          active: state.failure.isNone(),
          onTap: () => context
              .read<LoginFormBloc>()
              .add(const LoginFormEvent.loginPressed()),
        );
      },
    );
  }
}
