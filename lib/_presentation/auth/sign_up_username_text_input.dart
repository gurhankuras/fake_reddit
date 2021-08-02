import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_email_text_input.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';

class SignUpUsernameTextInput extends StatefulWidget {
  const SignUpUsernameTextInput({Key? key}) : super(key: key);

  @override
  _SignUpUsernameTextInputState createState() =>
      _SignUpUsernameTextInputState();
}

class _SignUpUsernameTextInputState extends State<SignUpUsernameTextInput> {
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
        context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.usernameChanged(value));
        if (!touched) {
          setState(() {
            touched = true;
          });
        }
      }),
      // (value) {
      //   context
      //       .read<SignUpFormBloc>()
      //       .add(SignUpFormEvent.usernameChanged(value));
      //   if (!touched) {
      //     setState(() {
      //       touched = true;
      //     });
      //   }
      // },
      suffixWidget: BlocBuilder<SignUpFormBloc, SignUpFormState>(
        // buildWhen: (previous, current) =>
        //     previous.usernameFailure != current.usernameFailure ||
        //     previous.checkingUsername != current.checkingUsername,
        builder: (context, state) {
          if (touched) {
            if (state.checkingUsername) {
              return const Icon(Icons.circle, color: Colors.blue);
            }
            return state.usernameFailure.fold(
              () => const Icon(Icons.check, color: Colors.green),
              (a) => GestureDetector(
                onTap: () {
                  controller.clear();
                  context
                      .read<SignUpFormBloc>()
                      .add(const SignUpFormEvent.usernameChanged(''));
                },
                child: const Icon(Icons.dangerous, color: Colors.red),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }

          // return touched
          //     ? state.usernameFailure.fold(
          //         () => const Icon(Icons.check, color: Colors.green),
          //         (a) => GestureDetector(
          //           onTap: () {
          //             controller.clear();
          //             context
          //                 .read<SignUpFormBloc>()
          //                 .add(const SignUpFormEvent.usernameChanged(''));
          //           },
          //           child: const Icon(Icons.dangerous, color: Colors.red),
          //         ),
          //       )
          //     : const SizedBox.shrink();
        },
      ),
    );
  }
}
