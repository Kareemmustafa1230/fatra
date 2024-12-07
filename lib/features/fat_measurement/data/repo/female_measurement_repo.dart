import 'package:feta/core/databases/api/api_constants.dart';
import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/fat_measurement_response.dart';
import '../model/female_fat_measurement_request.dart';

class FemaleMeasurementRepo{
  final ApiService _apiService;
  FemaleMeasurementRepo( this._apiService);
  Future<ApiResult<FatMeasurementResponse>> femaleFat(
      FemaleFatMeasurementRequest femaleFatMeasurementRequest) async {
    try {
      final response = await _apiService.femaleFat(
          femaleFatMeasurementRequest,
          'Bearer ${getIt<CacheHelper>().getData(key: ApiKey.token)}',
          'ar'
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
