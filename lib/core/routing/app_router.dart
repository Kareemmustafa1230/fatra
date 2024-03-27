import 'package:dio/dio.dart';
import 'package:feta/core/routing/routes.dart';
import 'package:feta/features/login/presentation/screens_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/domain/repositories_domain/login_repository.dart';
import '../../features/login/presentation/cubit/login_app_cubit.dart';
import '../databases/api/dio_consumer.dart';

class AppRouter{
  Route generateRoute( RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const Placeholder());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginAppCubit()..emitLoginCubit(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => const Placeholder());
      default:
        return MaterialPageRoute(
            builder: (context) =>  Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
            ),
            ),
        );
    }
  }
}