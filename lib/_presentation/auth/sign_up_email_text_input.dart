// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
// import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_text_field.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';

class Debounce {
  Timer? timer;

  void call(Duration delay, Function callback) {
    timer?.cancel();
    timer = Timer(delay, () {
      callback();
    });
  }
}

// class EmailTextInput extends StatefulWidget {
//   const EmailTextInput({Key? key}) : super(key: key);

//   @override
//   _EmailTextInputState createState() => _EmailTextInputState();
// }

// class _EmailTextInputState extends State<EmailTextInput> {
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
//       hintText: 'Email',
//       controller: controller,
//       onChanged: (value) => debounce(const Duration(milliseconds: 500), () {
//         context.read<SignUpFormBloc>().add(SignUpFormEvent.emailChanged(value));
//         if (!touched) {
//           setState(() {
//             touched = true;
//           });
//         }
//       }),
//       suffixWidget: BlocBuilder<SignUpFormBloc, SignUpFormState>(
//         buildWhen: (previous, current) =>
//             previous.emailFailure != current.emailFailure ||
//             previous.checkingEmail != current.checkingEmail,
//         builder: (context, state) {
//           if (touched) {
//             if (state.checkingEmail) {
//               return const Icon(Icons.circle, color: Colors.blue);
//             }
//             return state.emailFailure.fold(
//               () => const Icon(Icons.check, color: Colors.green),
//               (a) => GestureDetector(
//                 onTap: () {
//                   controller.clear();
//                   context
//                       .read<SignUpFormBloc>()
//                       .add(const SignUpFormEvent.emailChanged(''));
//                 },
//                 child: const Icon(Icons.dangerous, color: Colors.red),
//               ),
//             );
//           } else {
//             return const SizedBox.shrink();
//           }
//           // return touched
//           //     ? state.emailFailure.fold(
//           //         () => const Icon(Icons.check, color: Colors.green),
//           //         (a) => GestureDetector(
//           //           onTap: () {
//           //             controller.clear();
//           //             context
//           //                 .read<SignUpFormBloc>()
//           //                 .add(const SignUpFormEvent.emailChanged(''));
//           //           },
//           //           child: const Icon(Icons.dangerous, color: Colors.red),
//           //         ),
//           //       )
//           //     : const SizedBox.shrink();
//         },
//       ),
//     );
//   }
// }

class SignUpEmailTextField extends StatelessWidget {
  const SignUpEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpTextField(
      buildWhen: (previous, current) =>
          previous.emailFailure != current.emailFailure ||
          previous.checkingEmail != current.checkingEmail,
      name: 'Email',
      onChanged: (value) => context
          .read<SignUpFormBloc>()
          .add(SignUpFormEvent.emailChanged(value)),
      checkingBuilder: (state) => state.checkingEmail,
      failureBuilder: (state) => state.emailFailure,
      onCleared: () => context
          .read<SignUpFormBloc>()
          .add(const SignUpFormEvent.emailChanged('')),
    );
  }
}
