import 'package:feta/features/login/data/models/sub_models/data_model.dart';
import 'package:feta/features/login/domain/entities/login_entites.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required super.status,
    required super.message,
    required super .data,
  });
  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json['status'],
        message: json['message'],
        data: DataModel.fromJson(json['data']),
      );
  Map<String, dynamic> toJson() => {
       'status': status,
       'message': message,
        'data': data,
      };
}