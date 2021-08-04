import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/core/reusable/scaled_drawer.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:reddit_clone/application/main_page_bloc/main_page_bloc.dart';
import 'package:reddit_clone/domain/env.dart';
import 'package:reddit_clone/infastructure/auth/always_failing_auth_service.dart';
import 'package:reddit_clone/infastructure/auth/auth_service.dart';
import 'package:reddit_clone/injection.dart';

import '_presentation/home/home_vm.dart';
import 'app.dart';
import 'application/core/simple_bloc_observer.dart';
import 'application/auth/auth_bloc.dart';

const ALWAYS_FAILING_AUTH = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Env.dev);
  // print(ValidatorObject("gurhan", none()).min(3).max(7).get());
  Bloc.observer = SimpleBlocObserver();
  // Logger.level = Level.wtf;
  // IBottomModalSheetService bottomModalSheetService =
  //     BottomModalSheetService(registry: {
  //   'imageSelect': (context, dialogContext) => Container(),
  // });

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => MyDrawerController()),
        BlocProvider(
            create: (context) => AuthBloc(
                  authService: AlwaysFailingAuthService(),
                )..add(const AuthEvent.gotUserSignedIn())),
        ChangeNotifierProvider(create: (context) => HomeVM()),
      ],
      child: MyApp(),
    ),
  );
}
