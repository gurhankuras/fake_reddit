import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';

class PasswordTextInput extends StatefulWidget {
  final void Function(String value) onChanged;
  const PasswordTextInput({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  _PasswordTextInputState createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends State<PasswordTextInput> {
  bool showPassword = false;

  void toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextInput(
      obscureText: !showPassword,
      hintText: 'Password',
      textStyle: Theme.of(context).textTheme.bodyText2,
      onChanged: widget.onChanged,
      suffixWidget: GestureDetector(
        onTap: toggleShowPassword,
        child: showPassword
            ? const Icon(Icons.remove_red_eye_outlined)
            : const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
