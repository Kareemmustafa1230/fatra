import 'package:feta/core/databases/api/api_constants.dart';
import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/fat_measurement_request.dart';
import '../model/fat_measurement_response.dart';

class MaleMeasurementRepo{
  final ApiService _apiService;
  MaleMeasurementRepo( this._apiService);
  Future<ApiResult<FatMeasurementResponse>> maleFat(
      FatMeasurementRequest fatMeasurementRequest) async {
    try {
      final response = await _apiService.maleFat(
          fatMeasurementRequest,
          'Bearer ${getIt<CacheHelper>().getData(key: ApiKey.token)}',
        'ar'
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
