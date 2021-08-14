import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'sign_up_text_field.dart';
import '../../application/auth/sign_up_form/sign_up_form_bloc.dart';

class SignUpUsernameTextField extends StatelessWidget {
  const SignUpUsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpTextField(
      buildWhen: (previous, current) =>
          previous.usernameFailure != current.usernameFailure ||
          previous.checkingUsername != current.checkingUsername,
      name: 'Username',
      onChanged: (value) => context
          .read<SignUpFormBloc>()
          .add(SignUpFormEvent.usernameChanged(value)),
      checkingBuilder: (state) => state.checkingUsername,
      onCleared: () => context
          .read<SignUpFormBloc>()
          .add(const SignUpFormEvent.usernameChanged('')),
      failureBuilder: (state) => state.usernameFailure,
    );
  }
}
