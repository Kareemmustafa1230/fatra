import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_user_response.g.dart';


@JsonSerializable()
class LoginUserResponse {
  LoginUserResponse({
    this.data,
    this.message,
    this.status,
  });

  @JsonKey(name: 'data')
  Data? data;
  String? message;
  int? status;

  factory LoginUserResponse.fromJson(Map<String, dynamic> json) =>  _$LoginUserResponseFromJson(json);
}

@JsonSerializable()
class Data {
  Data({
    this.user,
    this.token,
  });

  User? user;
  String? token;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class User {
  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.type,
    this.age,
    this.img,
  });

  int? id;
  String? name;
  String? email;
  String? phone;
  String? type;
  int? age;
  String? img;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}
