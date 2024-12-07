import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/articles_app/data/repo/articles_repo.dart';
import '../../features/articles_app/data/repo/categorya_articles_repo.dart';
import '../../features/articles_app/logic/cubit/articles_cubit.dart';
import '../../features/articles_app/logic/cubit/category_articles_cubit.dart';
import '../../features/fat_measurement/data/repo/female_measurement_repo.dart';
import '../../features/fat_measurement/data/repo/male_measurement_repo.dart';
import '../../features/fat_measurement/logic/cubit/female_fat_cubit.dart';
import '../../features/fat_measurement/logic/cubit/male_fat_cubit.dart';
import '../../features/login_app/data/repo/login_repo.dart';
import '../../features/login_app/logic/cubit/login_user_cubit.dart';
import '../../features/recipes/data/repo/food_repo.dart';
import '../../features/recipes/logic/cubit/food_cubit.dart';
import '../../features/sign_up_app/data/repo/sign_up_repo.dart';
import '../../features/sign_up_app/logic/cubit/sign_up_user_cubit.dart';
import '../../features/videos/data/repo/category_video_repo.dart';
import '../../features/videos/logic/cubit/category_video_cubit.dart';
import '../databases/api/api_service.dart';
import '../databases/api/dio_factory.dart';
import '../databases/cache/cache_helper.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginUserCubit>(() => LoginUserCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpUserCubit>(() => SignUpUserCubit(getIt()));
  // CategoryArticles
  getIt.registerLazySingleton<CategoryArticlesRepo>(() => CategoryArticlesRepo(getIt()));
  getIt.registerFactory<CategoryArticlesCubit>(() => CategoryArticlesCubit(getIt()));
  // Articles
  getIt.registerLazySingleton<ArticlesRepo>(() => ArticlesRepo(getIt()));
  getIt.registerFactory<ArticlesCubit>(() => ArticlesCubit(getIt()));
  // Videos
  getIt.registerLazySingleton<CategoryVideoRepo>(() => CategoryVideoRepo(getIt()));
  getIt.registerFactory<CategoryVideoCubit>(() => CategoryVideoCubit(getIt()));
  // maleFat
  getIt.registerLazySingleton<MaleMeasurementRepo>(() => MaleMeasurementRepo(getIt()));
  getIt.registerFactory<MaleFatCubit>(() => MaleFatCubit(getIt()));
  // femaleFat
  getIt.registerLazySingleton<FemaleMeasurementRepo>(() => FemaleMeasurementRepo(getIt()));
  getIt.registerFactory<FemaleFatCubit>(() => FemaleFatCubit(getIt()));

  //food
  getIt.registerLazySingleton<FoodRepo>(() => FoodRepo(getIt()));
  getIt.registerFactory<FoodCubit>(() => FoodCubit(getIt()));
}