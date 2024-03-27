import 'package:feta/core/databases/api/api_consumer.dart';
import 'package:feta/core/databases/api/end_points.dart';
import 'package:feta/features/login/data/models/login_model.dart';

import '../../../../core/params/params.dart';

class LoginRemoteDataSource {
  final ApiConsumer api;

  LoginRemoteDataSource({required this.api});

  Future<LoginModel> loginUser(PostLogin login) async {
    final response = await api.post(
      EndPoints.login,
      isFormData: true,
      data: {
        ApiKey.email: login.email,
        ApiKey.password: login.password,
        ApiKey.typeAccount: 'gmail',
      },
    );
    return LoginModel.fromJson(response);
  }
}




// import 'package:feta/core/databases/api/api_consumer.dart';
// import 'package:feta/core/databases/api/end_points.dart';
// import 'package:feta/features/login/data/models/login_model.dart';
//
// class LoginRemoteDataSource{
//   final ApiConsumer api;
//   LoginRemoteDataSource({required this.api});
//   Future<LoginModel>loginUser() async{
//    final response = await api.post(
//         EndPoints.login,
//     isFormData: true,
//     data: {
//       ApiKey.email : 'karemmustafa952@gmail.com',
//       ApiKey.password : '1234567890',
//       ApiKey.typeAccount : 'gmail',
//     });
//    return LoginModel.fromJson(response);
//   }
// }