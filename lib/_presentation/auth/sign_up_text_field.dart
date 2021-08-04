import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/auth/sign_up_email_text_input.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';

class SignUpTextField extends StatefulWidget {
  final String name;
  final void Function(String value) onChanged;
  final Option<ValueFailure<String>> Function(SignUpFormState state)
      failureBuilder;
  final bool Function(SignUpFormState state) checkingBuilder;
  final VoidCallback onCleared;
  final bool Function(SignUpFormState previous, SignUpFormState current)
      buildWhen;

  const SignUpTextField({
    Key? key,
    required this.name,
    required this.onChanged,
    required this.checkingBuilder,
    required this.onCleared,
    required this.buildWhen,
    required this.failureBuilder,
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
      hintText: widget.name,
      controller: controller,
      onChanged: (value) => debounce(const Duration(milliseconds: 500), () {
        widget.onChanged(value);
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
          // return widget.suffixBuilder(context, state, controller, touched);
          if (touched) {
            if (widget.checkingBuilder(state)) {
              return const Icon(Icons.circle, color: Colors.blue);
            }
            return widget.failureBuilder(state).fold(
                  () => const Icon(Icons.check, color: Colors.green),
                  (a) => GestureDetector(
                    onTap: () {
                      controller.clear();
                      widget.onCleared();
                    },
                    child: const Icon(Icons.dangerous, color: Colors.red),
                  ),
                );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

// class LoginTextField extends StatefulWidget {
//   final String name;
//   final void Function(String value) onChanged;
//   const LoginTextField({
//     Key? key,
//     required this.name,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   _LoginTextFieldState createState() => _LoginTextFieldState();
// }

// class _LoginTextFieldState extends State<LoginTextField> {
//   bool touched = false;
//   late final TextEditingController controller;
//   final debounce = Debounce();

//   @override
//   void initState() {
//     super.initState();
//     controller = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AppTextInput(
//       hintText: widget.name,
//       controller: controller,
//       onChanged: (value) => debounce(const Duration(milliseconds: 500), () {
//         widget.onChanged(value);
//         if (!touched) {
//           setState(() {
//             touched = true;
//           });
//         }
//       }),
//       suffixWidget: BlocBuilder<SignUpFormBloc, SignUpFormState>(
//         // buildWhen: (previous, current) =>
//         //     previous.usernameFailure != current.usernameFailure ||
//         //     previous.checkingUsername != current.checkingUsername,
//         builder: (context, state) {
//           // return widget.suffixBuilder(context, state, controller, touched);
//           return const SizedBox.shrink();
//         },
//       ),
//     );
//   }
// }
