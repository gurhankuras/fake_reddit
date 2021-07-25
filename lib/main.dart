import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/application/core/simple_bloc_observer.dart';

import 'app.dart';
import '_presentation/home/home_vm.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(ChangeNotifierProvider(create: (context) => HomeVM(), child: MyApp()));
}
