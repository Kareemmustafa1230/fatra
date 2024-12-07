import '../../../../core/databases/api/api_result.dart';
import '../../../../core/databases/api/api_service.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/sign_up_user_request.dart';
import '../model/sign_up_user_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpUserResponse>> signup(
      SignUpUserRequest signUpUserRequest) async {
    try {
      final response = await _apiService.signup(signUpUserRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}