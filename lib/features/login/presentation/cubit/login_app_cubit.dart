import 'package:bloc/bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:feta/core/connection/network_info.dart';
import 'package:feta/core/databases/api/dio_consumer.dart';
import 'package:feta/core/databases/cache/cache_helper.dart';
import 'package:feta/core/params/params.dart';
import 'package:feta/features/login/data/data_sources/login_local_data_sources.dart';
import 'package:feta/features/login/data/data_sources/login_remote_data_sources.dart';
import 'package:feta/features/login/data/repositories_data/login_repository_imple.dart';
import 'package:flutter/cupertino.dart';
import '../../domain/use_cases/login_user.dart';
import 'login_app_state.dart';


class LoginAppCubit extends Cubit<LoginAppState> {
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  LoginAppCubit() : super(LoginUserInitial());
  GlobalKey<FormState> signInFormKey = GlobalKey();
   emitLoginCubit() async {
    emit(LoginUserLoading());
    final response = await LoginUser(
      loginRepository: LoginRepositoryImpl(
          loginRemoteDataSource: LoginRemoteDataSource(api: DioConsumer(dio: Dio())),
          loginLocalDataSource: LoginLocalDataSource(cache: CacheHelper()),
          networkInfo: NetworkInfoImpl(DataConnectionChecker())),
    ).call(
      login:PostLogin(
          email: signInEmail.text,
          password: signInPassword.text,
      ),
    );
    print(response);
    response.fold(
          (failure) => emit(LoginUserFailure(errMessage: failure.errMessage)),
          (user) => emit(LoginUserSuccessfully(loginEntity: user)),
    );
  }
}


// import 'package:bloc/bloc.dart';
// import 'package:data_connection_checker_tv/data_connection_checker.dart';
// import 'package:dio/dio.dart';
// import 'package:feta/core/connection/network_info.dart';
// import 'package:feta/core/databases/api/dio_consumer.dart';
// import 'package:feta/core/databases/cache/cache_helper.dart';
// import 'package:feta/features/login/data/data_sources/login_local_data_sources.dart';
// import 'package:feta/features/login/data/data_sources/login_remote_data_sources.dart';
// import 'package:feta/features/login/data/repositories_data/login_repository_imple.dart';
// import 'package:flutter/cupertino.dart';
// import '../../domain/use_cases/login_user.dart';
// import 'login_app_state.dart';
//
// class LoginAppCubit extends Cubit<LoginAppState> {
//   GlobalKey<FormState> signInFormKey = GlobalKey();
//   LoginAppCubit() : super(LoginUserInitial());
//   emitLoginCubit() async{
//     emit(LoginUserLoading());
//    final response = await LoginUser(
//         loginRepository:LoginRepositoryImpl(
//             networkInfo: NetworkInfoImpl(DataConnectionChecker()),
//             loginRemoteDataSource: LoginRemoteDataSource(api: DioConsumer(dio: Dio())),
//             loginLocalDataSource: LoginLocalDataSource(cache: CacheHelper()),
//         ).call(
//
//         );
//     );
//    return response ;
//
//     // response.fold(
//     //         (failure)=> emit(LoginUserFailure(errMessage:failure.errorMessage)) ,
//     //         (loginEntity)=> emit(LoginUserSuccessfully(loginEntity:loginEntity )),
//     // );
//
//   }
//
// }
