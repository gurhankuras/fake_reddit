import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/auth/auth_page.dart';
import 'package:reddit_clone/_presentation/auth/password_text_input.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/application/auth/login_form/login_form_bloc.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:reddit_clone/routes.dart';
import '../../application/auth/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  final Animation<double> animation;
  const LoginPage({
    Key? key,
    required this.animation,
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
        auth: AuthPageEnum.login,
        bottomSheet: continueButton(),
        actionText: 'SIGN UP',
        onActionTap: () =>
            Navigator.of(context).pushReplacementNamed(Routes.signupPage),
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
          animation: animation,
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
