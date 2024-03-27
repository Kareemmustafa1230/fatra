import '../../domain/entities/login_entites.dart';

class LoginAppState {}
 final class LoginUserInitial extends LoginAppState{}

 final class LoginUserSuccessfully extends LoginAppState {
   final LoginEntity loginEntity;

   LoginUserSuccessfully({required this.loginEntity});
 }

 final class LoginUserLoading extends LoginAppState {}

 final class LoginUserFailure extends LoginAppState {
   final String errMessage;

   LoginUserFailure({required this.errMessage});
 }