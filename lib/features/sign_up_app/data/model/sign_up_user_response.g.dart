// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpUserResponse _$SignUpUserResponseFromJson(Map<String, dynamic> json) =>
    SignUpUserResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$SignUpUserResponseToJson(SignUpUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      type: json['type'] as String?,
      age: json['age'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'type': instance.type,
      'age': instance.age,
      'img': instance.img,
    };
