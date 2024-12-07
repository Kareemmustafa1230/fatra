import 'package:dio/dio.dart';
import 'package:feta/features/sign_up_app/data/model/sign_up_user_request.dart';
import 'package:feta/features/sign_up_app/data/model/sign_up_user_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import '../../../features/articles_app/data/model/articles_response.dart';
import '../../../features/articles_app/data/model/category_articles_response.dart';
import '../../../features/fat_measurement/data/model/fat_measurement_request.dart';
import '../../../features/fat_measurement/data/model/fat_measurement_response.dart';
import '../../../features/fat_measurement/data/model/female_fat_measurement_request.dart';
import '../../../features/login_app/data/model/login_user_request.dart';
import '../../../features/login_app/data/model/login_user_response.dart';
import '../../../features/recipes/data/model/food_response.dart';
import '../../../features/videos/data/model/category_video_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';


@RestApi(baseUrl: ApiConstants.baserUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;


  @POST(ApiConstants.login)
  Future<LoginUserResponse> login(
      @Body() LoginUserRequest loginUserRequest,);

  @POST(ApiConstants.register)
  Future<SignUpUserResponse> signup(
      @Body() SignUpUserRequest signUpUserRequest,);

  @GET(ApiConstants.categoryArticles)
  Future<CategoryArticlesResponse>getCategoryArticles(
      @Header('Accept-Language') String acceptLanguage
      );

  @GET('${ApiConstants.articles}{id}')
  Future<ArticlesResponse> getArticles(
      @Path() int id,
      @Header('Accept-Language') String acceptLanguage,
      );

  @GET(ApiConstants.categoryVideo)
  Future<CategoryVideoResponse> getCategoryVideo(
      @Header('Accept-Language') String acceptLanguage,
      );

  @POST(ApiConstants.maleFat)
  Future<FatMeasurementResponse> maleFat(
      @Body() FatMeasurementRequest fatMeasurementRequest,
      @Header('Authorization') String token,
      @Header('Accept-Language') String acceptLanguage,
      );

  @POST(ApiConstants.femaleFat)
  Future<FatMeasurementResponse> femaleFat(
      @Body() FemaleFatMeasurementRequest femaleFatMeasurementRequest,
      @Header('Authorization') String token,
      @Header('Accept-Language') String acceptLanguage,
      );

  @GET(ApiConstants.food)
  Future<FoodResponse> food(
      @Header('Accept-Language') String acceptLanguage,
      );
}