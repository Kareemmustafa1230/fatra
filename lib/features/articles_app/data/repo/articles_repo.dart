import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/articles_response.dart';

class ArticlesRepo{
  final ApiService _apiService;

  ArticlesRepo(this._apiService);
  Future<ApiResult<List<DataArticles>>> getArticles(int id) async{
    try {
      final response = await _apiService.getArticles(
          id,
          'ar'
      );
      final data = response.data ?? [];
      final dataList = data.map((articles) => articles).toList();
      return ApiResult.success(dataList);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
