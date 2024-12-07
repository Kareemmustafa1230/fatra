import 'package:dio/dio.dart';
import '../../di/dependency_injection.dart';
import '../cache/cache_helper.dart';
import 'api_constants.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
    getIt<CacheHelper>().getData(key: ApiKey.token) != null
        ? 'Bearer ${getIt<CacheHelper>().getData(key: ApiKey.token)}'
        : null;
    super.onRequest(options, handler);
  }
}
