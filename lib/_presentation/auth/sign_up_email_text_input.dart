import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';

class EmailTextInput extends StatefulWidget {
  const EmailTextInput({Key? key}) : super(key: key);

  @override
  _EmailTextInputState createState() => _EmailTextInputState();
}

class _EmailTextInputState extends State<EmailTextInput> {
  bool touched = false;
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextInput(
      hintText: 'Email',
      controller: controller,
      onChanged: (value) {
        context.read<SignUpFormBloc>().add(SignUpFormEvent.emailChanged(value));
        if (!touched) {
          setState(() {
            touched = true;
          });
        }
      },
      suffixWidget: BlocBuilder<SignUpFormBloc, SignUpFormState>(
        builder: (context, state) {
          return touched
              ? state.emailFailure.fold(
                  () => const Icon(Icons.check, color: Colors.green),
                  (a) => GestureDetector(
                    onTap: () {
                      controller.clear();
                      context
                          .read<SignUpFormBloc>()
                          .add(const SignUpFormEvent.emailChanged(''));
                    },
                    child: const Icon(Icons.dangerous, color: Colors.red),
                  ),
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }
}
