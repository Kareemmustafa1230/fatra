import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_user_response.g.dart';

@JsonSerializable()
class SignUpUserResponse {
  Data? data;
  String? message;
  int? status;

  SignUpUserResponse({this.data, this.message, this.status});

  factory SignUpUserResponse.fromJson(Map<String, dynamic> json) =>  _$SignUpUserResponseFromJson(json);


}

@JsonSerializable()
class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

 factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);


}

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? type;
  String? age;
  String? img;

  User({this.id, this.name, this.email, this.phone, this.type, this.age, this.img});

 factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


}
