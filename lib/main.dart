nalimport 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/databases/cache/cache_helper.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'my_app.dart';

void main() async {
  await setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await getIt<CacheHelper>().init();
  getIt<CacheHelper>().getData(key: 'token') as String?;
  runApp( MyApp(appRouter: AppRouter(),));
}

