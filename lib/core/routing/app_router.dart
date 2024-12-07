import 'package:feta/core/routing/routes.dart';
import 'package:feta/features/fat_measurement/ui/screen/fat_measurement_app.dart';
import 'package:feta/features/fat_measurement/ui/screen/fat_measurement_woman.dart';
import 'package:feta/features/group_team/ui/screen/group_team_app.dart';
import 'package:feta/features/home/ui/screens/home_app.dart';
import 'package:feta/features/login_app/ui/screen/login_screen.dart';
import 'package:feta/features/login_app/ui/widget/choose_route.dart';
import 'package:feta/features/profile/ui/screen/profile_app.dart';
import 'package:feta/features/sign_up_app/logic/cubit/sign_up_user_cubit.dart';
import 'package:feta/features/store/ui/screen/store_app.dart';
import 'package:feta/features/videos/ui/screens/video_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/articles_app/logic/cubit/category_articles_cubit.dart';
import '../../features/articles_app/ui/screen/articles.dart';
import '../../features/fat_measurement/ui/screen/fat_measurement_man.dart';
import '../../features/home_screen/ui/screen/home_screen.dart';
import '../../features/login_app/logic/cubit/login_user_cubit.dart';
import '../../features/measurement_app/ui/screens/lower_back_measurement.dart';
import '../../features/measurement_app/ui/screens/measurement.dart';
import '../../features/measurement_app/ui/screens/middle_measurement.dart';
import '../../features/measurement_app/ui/screens/neck_measurement.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/recipes/ui/screen/item_recipes.dart';
import '../../features/recipes/ui/screen/recipes_screen.dart';
import '../../features/sign_up_app/ui/screen/sing_up.dart';
import '../../features/videos/logic/cubit/category_video_cubit.dart';
import '../di/dependency_injection.dart';

class AppRouter{
  Route generateRoute( RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => const OnboardingScreen(),);
        case Routes.chooseRoute:
        return MaterialPageRoute(
            builder: (_) => const ChooseRoute(),);
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginUserCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpUserCubit>(),
            child: const SignUpScreen(),
          ),
        );
       case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) =>   HomeScreen(),);
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) =>  const HomeApp(),);
      case Routes.store:
        return MaterialPageRoute(
            builder: (_) =>  const StoreApp(),);
      case Routes.groupTeam:
        return MaterialPageRoute(
            builder: (_) =>  const GroupTeamApp(),);
      case Routes.profile:
        return MaterialPageRoute(
            builder: (_) =>  const ProfileApp(),);
      case Routes.articles:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
              create:(context) => getIt<CategoryArticlesCubit>()..emitCategoryArticlesStates(),
            child:  const Articles(),
          ),
        );
      case Routes.categoryVideo:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create:(context) => getIt<CategoryVideoCubit>()..emitCategoryVideoStates(),
            child:   const VideoApp(),
          ),
        );
        case Routes.fatMeasurement:
          return MaterialPageRoute(
            builder: (_) => const FatMeasurementApp(),
    );
      case Routes.manFat:
        return MaterialPageRoute(
            builder: (_) => const FatMeasurementMan(),
        );
        case Routes.womanFat:
          return MaterialPageRoute(
            builder: (_) => const FatMeasurementWoman(),
        );
          case Routes.measurement:
            return MaterialPageRoute(
            builder: (_) => const MeasurementApp(),
            );
            case Routes.neckMeasurement:
              return MaterialPageRoute(
                  builder: (_) => const NeckMeasurement(),
              );
      case Routes.middleMeasurement:
        return MaterialPageRoute(
            builder: (_) => const MiddleMeasurement(),
        );
      case Routes.lowerBackMeasurement:
        return MaterialPageRoute(
            builder: (_) => const LowerBackMeasurement(),
        );
        case Routes.recipes:
          return MaterialPageRoute(
            builder: (_) => const RecipesScreen(),
        );
          case Routes.itemRecipes:
            return MaterialPageRoute(
            builder: (_) => const ItemRecipes(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) =>  Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
            ),
            ),
        );
    }
  }
}