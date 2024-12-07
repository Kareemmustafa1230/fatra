import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/category_video_response.dart';

class CategoryVideoRepo {
  final ApiService _apiService;

  CategoryVideoRepo(this._apiService);

  Future<ApiResult<List<CategoryVideoData>>> getCategoryVideo() async {
    try {
      final response = await _apiService.getCategoryVideo(
          'ar',
      );
      final data = response.data ?? [];
      final dataList = data.map((category) => category).toList();
      return ApiResult.success(dataList);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
