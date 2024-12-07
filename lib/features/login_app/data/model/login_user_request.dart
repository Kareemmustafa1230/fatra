import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_user_request.g.dart';

@JsonSerializable()
class LoginUserRequest{
  final String email;
  final String password;
  @JsonKey(name: 'type_account')
  final String typeAccount;

  LoginUserRequest({required this.email, required this.password,required this.typeAccount});

  Map<String, dynamic> toJson() => _$LoginUserRequestToJson(this);

}