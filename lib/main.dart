import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '_presentation/home/home_vm.dart';
import 'app.dart';
import 'application/core/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  // Logger.level = Level.wtf;
  // IBottomModalSheetService bottomModalSheetService =
  //     BottomModalSheetService(registry: {
  //   'imageSelect': (context, dialogContext) => Container(),
  // });

  runApp(ChangeNotifierProvider(create: (context) => HomeVM(), child: MyApp()));
}
