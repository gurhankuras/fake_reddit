import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../domain/auth/i_user_remote_checker.dart';
import '../../domain/i_snackbar_service.dart';
import '../../injection.dart';
import '../../routes/app_router.gr.dart';
import 'auth_page.dart';
import 'password_text_input.dart';
import 'sign_up_email_text_input.dart';
import 'sign_up_username_text_input.dart';

class SignUpPage extends StatelessWidget implements AutoRouteWrapper {
  // final Animation<double> animation;
  const SignUpPage({
    Key? key,
    // required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous is Unauthenticated && current is Authenticated,
      listener: (context, state) {
        state.maybeMap(
          authenticated: (_) => Navigator.of(context).pop(),
          orElse: () => null,
        );
      },
      child: AuthPage(
        auth: AuthPageEnum.signup,
        onAppleAuthPressed: () {},
        onGoogleAuthPressed: () => context
            .read<SignUpFormBloc>()
            .add(const SignUpFormEvent.googleSignUpPressed()),
        bottomSheet: continueButton(),
        actionText: 'LOG IN',
        onActionTap: () => AutoRouter.of(context).popAndPush(LoginRoute()),
        headerText: 'Create an account',
        textFields: [
          const SignUpEmailTextField(),
          const SignUpUsernameTextField(),
          PasswordTextInput(
            onChanged: (value) => context
                .read<SignUpFormBloc>()
                .add(SignUpFormEvent.passwordChanged(value)),
          ),
        ],
      ),
    );
  }

  BlocBuilder<SignUpFormBloc, SignUpFormState> continueButton() {
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      buildWhen: (previous, current) =>
          previous.failure != current.failure ||
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return PersistentContinueButton(
          // animation: animation,
          isLoading: state.isSubmitting,
          active: state.failure.isNone(),
          onTap: () => context
              .read<SignUpFormBloc>()
              .add(const SignUpFormEvent.signInPressed()),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpFormBloc(
        snackbarService: getIt<ISnackbarService>(),
        authBloc: context.read<AuthBloc>(),
        checker: getIt<IUserRemoteChecker>(),
        formatValidator: SignUpFormatValidator(),
        authService: getIt<IAuthService>(),
      ),
      child: this,
    );
  }
}
