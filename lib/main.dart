import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:route_challenge/core/di/injection_container.dart';
import 'package:route_challenge/route_challenge.dart';
import 'core/utils/observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Bloc.observer = MyBlocObserver();

  runApp(const RouteChallenge());
}
