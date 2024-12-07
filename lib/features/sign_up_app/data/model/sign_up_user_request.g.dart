// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpUserRequest _$SignUpUserRequestFromJson(Map<String, dynamic> json) =>
    SignUpUserRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      typeAccount: json['type_account'] as String,
      type: json['type'] as String,
      phone: json['phone'] as String,
      age: json['age'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignUpUserRequestToJson(SignUpUserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'type_account': instance.typeAccount,
      'type': instance.type,
      'phone': instance.phone,
      'age': instance.age,
    };
