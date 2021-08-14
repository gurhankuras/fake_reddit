import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../routes.dart';
import 'auth_page.dart';
import 'password_text_input.dart';
import 'sign_up_email_text_input.dart';
import 'sign_up_username_text_input.dart';

class SignUpPage extends StatelessWidget {
  final Animation<double> animation;
  const SignUpPage({
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
        auth: AuthPageEnum.signup,
        onAppleAuthPressed: () {},
        onGoogleAuthPressed: () => context
            .read<SignUpFormBloc>()
            .add(const SignUpFormEvent.googleSignUpPressed()),
        bottomSheet: continueButton(),
        actionText: 'LOG IN',
        onActionTap: () =>
            Navigator.of(context).pushReplacementNamed(Routes.loginPage),
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
          animation: animation,
          isLoading: state.isSubmitting,
          active: state.failure.isNone(),
          onTap: () => context
              .read<SignUpFormBloc>()
              .add(const SignUpFormEvent.signInPressed()),
        );
      },
    );
  }
}
