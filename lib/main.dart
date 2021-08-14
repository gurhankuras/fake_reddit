import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/home/home_vm.dart';
import 'app.dart';
import 'application/auth/auth_bloc.dart';
import 'application/core/simple_bloc_observer.dart';
import 'domain/auth/token_cache_service.dart';
import 'domain/env.dart';
import 'infastructure/core/cache_service.dart';
import 'injection.dart';

const ALWAYS_FAILING_AUTH = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Env.dev);
  // print(ValidatorObject("gurhan", none()).min(3).max(7).get());
  print(await getIt<CacheService>().getString(TokenKeys.ACCESS_TOKEN_KEY));
  print(await getIt<CacheService>().getString(TokenKeys.REFRESH_TOKEN_KEY));

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
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.gotUserSignedIn())),
        ChangeNotifierProvider(create: (context) => HomeVM()),
      ],
      child: MyApp(),
    ),
  );
}
