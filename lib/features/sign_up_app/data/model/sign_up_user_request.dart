import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_user_request.g.dart';

@JsonSerializable()
class SignUpUserRequest{
  final String name ;
  final String email;
  final String password;
  @JsonKey(name: 'type_account')
  final String typeAccount;
  final String type ;
  final String phone;
  final String age;

  SignUpUserRequest({
  required this.email,
  required this.password,
  required this.typeAccount,
  required this.type,
  required this.phone,
  required this.age,
  required this.name,
  });

  Map<String, dynamic> toJson() => _$SignUpUserRequestToJson(this);

}