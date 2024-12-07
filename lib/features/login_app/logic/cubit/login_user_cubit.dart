import 'package:feta/core/databases/api/api_constants.dart';
import 'package:feta/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../data/model/login_user_request.dart';
import '../../data/repo/login_repo.dart';
import 'login_user_state.dart';

class LoginUserCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginUserCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginUserRequest(
        email: emailController.text,
        password: passwordController.text,
        typeAccount: 'email',
      ),
    );
    response.when(success: (loginUserResponse) {
      emit(LoginState.success(loginUserResponse));
      getIt<CacheHelper>().saveData(key: ApiKey.token, value: loginUserResponse.data!.token) ;
      // DioFactory.setTokenIntoHeaderAfterLogin(token);
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}