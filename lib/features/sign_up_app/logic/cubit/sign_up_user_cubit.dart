import 'package:bloc/bloc.dart';
import 'package:feta/features/sign_up_app/logic/cubit/sign_up_user_state.dart';
import 'package:flutter/cupertino.dart';
import '../../data/model/sign_up_user_request.dart';
import '../../data/repo/sign_up_repo.dart';


class SignUpUserCubit extends Cubit<SignupState> {
  final SignUpRepo _loginRepo;
  SignUpUserCubit(this._loginRepo) : super(const SignupState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates({required String type}) async {
    emit(const SignupState.loading());
    final response = await _loginRepo.signup(
      SignUpUserRequest(
        email: emailController.text,
        password: passwordController.text,
        typeAccount: 'email',
        name:nameController.text ,
        age: ageController.text,
        phone: phoneController.text,
        type:type,
      ),
    );
    response.when(success: (signupUserResponse) {
      emit(SignupState.success(signupUserResponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}

