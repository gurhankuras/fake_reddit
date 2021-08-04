import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/auth/sign_up_email_text_input.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';

class SignUpTextField extends StatefulWidget {
  final String name;
  final void Function(String value) onChanged;
  final Widget Function(BuildContext context, SignUpFormState state,
      TextEditingController controller, bool touched) suffixBuilder;
  const SignUpTextField({
    Key? key,
    required this.name,
    required this.onChanged,
    required this.suffixBuilder,
  }) : super(key: key);

  @override
  _SignUpTextFieldState createState() => _SignUpTextFieldState();
}

class _SignUpTextFieldState extends State<SignUpTextField> {
  bool touched = false;
  late final TextEditingController controller;
  final debounce = Debounce();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextInput(
      hintText: 'Username',
      controller: controller,
      onChanged: (value) => debounce(const Duration(milliseconds: 500), () {
        widget.onChanged(value);
        // context
        //     .read<SignUpFormBloc>()
        //     .add(SignUpFormEvent.usernameChanged(value));
        if (!touched) {
          setState(() {
            touched = true;
          });
        }
      }),
      suffixWidget: BlocBuilder<SignUpFormBloc, SignUpFormState>(
        // buildWhen: (previous, current) =>
        //     previous.usernameFailure != current.usernameFailure ||
        //     previous.checkingUsername != current.checkingUsername,
        builder: (context, state) {
          return widget.suffixBuilder(context, state, controller, touched);
          // if (touched) {
          //   if (state.checkingUsername) {
          //     return const Icon(Icons.circle, color: Colors.blue);
          //   }
          //   return state.usernameFailure.fold(
          //     () => const Icon(Icons.check, color: Colors.green),
          //     (a) => GestureDetector(
          //       onTap: () {
          //         controller.clear();
          //         context
          //             .read<SignUpFormBloc>()
          //             .add(const SignUpFormEvent.usernameChanged(''));
          //       },
          //       child: const Icon(Icons.dangerous, color: Colors.red),
          //     ),
          //   );
          // } else {
          //   return const SizedBox.shrink();
          // }
        },
      ),
    );
  }
}
