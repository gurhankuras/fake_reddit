import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/auth/password_text_input.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_email_text_input.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_text_field.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_username_text_input.dart';
import 'package:reddit_clone/_presentation/core/app/app_button.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/assets.dart';
import 'package:reddit_clone/_presentation/core/authentication_button.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/_presentation/core/reusable/text_divider_line.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:reddit_clone/routes.dart';

class AuthPage extends StatelessWidget {
  final Animation<double> animation;
  const AuthPage({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: SizedBox(
              width: 35,
              child: Image.asset(Assets.reddit),
            ),
            actions: [
              Center(
                child: GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(Routes.signInUpPage),
                  child: Text(
                    'SIGN UP',
                    style: Theme.of(context).textTheme.bodyText1?.apply(
                          color: Colors.blue,
                          fontSizeFactor: 1.1,
                        ),
                  ),
                ),
              )
            ],
          ),
          bottomSheet: BlocBuilder<SignUpFormBloc, SignUpFormState>(
            buildWhen: (previous, current) =>
                previous.failure != current.failure ||
                previous.isSubmitting != current.isSubmitting,
            builder: (context, state) {
              return PersistentContinueButton(
                animation: animation,
                isLoading: state.isSubmitting,
                active: state.failure.isNone(),
              );
            },
          ),
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Scrollbar(
                thickness: 3,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  reverse: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppHeader('Create an account'),
                        const PoliciesText(),
                        const AgreementCheck(),
                        const AuthButton(
                          auth: AuthMethods.google,
                          width: double.infinity,
                        ),
                        const AuthButton(
                          auth: AuthMethods.apple,
                          width: double.infinity,
                        ),
                        SizedBox(height: SizeConfig.defaultSize),
                        TextDividerLine(
                          text: 'OR',
                          textStyle: Theme.of(context).textTheme.caption?.apply(
                                color: AppColors.iron,
                                fontWeightDelta: 3,
                              ),
                        ),
                        const EmailTextInput(),
                        SignUpTextField(
                          name: 'Username',
                          onChanged: (value) => context
                              .read<SignUpFormBloc>()
                              .add(SignUpFormEvent.usernameChanged(value)),
                          suffixBuilder: (context, state, controller, touched) {
                            if (touched) {
                              if (state.checkingUsername) {
                                return const Icon(Icons.circle,
                                    color: Colors.blue);
                              }
                              return state.usernameFailure.fold(
                                () => const Icon(Icons.check,
                                    color: Colors.green),
                                (a) => GestureDetector(
                                  onTap: () {
                                    controller.clear();
                                    context.read<SignUpFormBloc>().add(
                                          const SignUpFormEvent.usernameChanged(
                                              ''),
                                        );
                                  },
                                  child: const Icon(Icons.dangerous,
                                      color: Colors.red),
                                ),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        ),
                        // const SignUpUsernameTextInput(),
                        const PasswordTextInput(),
                        const SizedBox(
                          width: double.infinity,
                          height: 100,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class PersistentContinueButton extends StatelessWidget {
  final Animation<double> animation;
  final bool active;
  final bool isLoading;
  // final Widget text;
  const PersistentContinueButton({
    Key? key,
    required this.animation,
    required this.active,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) => SlideTransition(
          position: animation.drive(
            Tween(begin: const Offset(0, 1), end: Offset.zero),
          ),
          child: child),
      animation: animation,
      child: SizedBox(
        width: double.infinity,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 100),
          child: Padding(
            padding: const EdgeInsets.only(
                right: 20.0, left: 20.0, bottom: 10.0, top: 20.0),
            child: AppButton(
              active: active,
              isLoading: isLoading,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              text: 'Continue',
              onTap: () => context
                  .read<SignUpFormBloc>()
                  .add(const SignUpFormEvent.signInPressed()),
            ),
          ),
        ),
      ),
    );
  }
}

/*


*/
