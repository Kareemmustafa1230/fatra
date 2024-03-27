import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'My-Bloc.dart';
import 'core/routing/app_router.dart';
import 'my_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp( MyApp(appRouter: AppRouter(),));
}

