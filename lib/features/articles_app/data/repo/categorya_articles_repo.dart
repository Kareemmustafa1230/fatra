import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/category_articles_response.dart';

class CategoryArticlesRepo {
  final ApiService _apiService;

  CategoryArticlesRepo(this._apiService);

  Future<ApiResult<List<DataCategory>>> getCategoryArticles() async {
    try {
      final response = await _apiService.getCategoryArticles('ar');
      final data = response.data ?? [];
      final dataList = data.map((category) => category).toList();
      return ApiResult.success(dataList);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
