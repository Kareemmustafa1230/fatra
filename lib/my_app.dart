import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/databases/api/api_constants.dart';
import 'core/databases/cache/cache_helper.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/theme.dart';

class MyApp extends StatelessWidget{
  final AppRouter appRouter ;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute:  getIt<CacheHelper>().getData(key: ApiKey.token) != null
            ? Routes.homeScreen
            : Routes.onBoardingScreen,
        theme: ThemeData(
          primaryColor:ThemeApp.whiteFF,
      ),
      ),
    );
  }
}
