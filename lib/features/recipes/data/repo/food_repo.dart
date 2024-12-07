import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/food_response.dart';

class FoodRepo{
  final ApiService _apiService;

  FoodRepo(this._apiService);
  Future<ApiResult<List<FoodData>>> food() async{
    try {
      final response = await _apiService.food(
          'ar'
      );
      final data = response.data ?? [];
      final dataList = data.map((data) => data).toList();
      return ApiResult.success(dataList);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
