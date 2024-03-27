import 'package:dartz/dartz.dart';
import 'package:feta/features/login/domain/repositories_domain/login_repository.dart';
import 'package:feta/core/errors/failure.dart';
import '../../../../core/params/params.dart';
import '../entities/login_entites.dart';

class LoginUser {
  final LoginRepository loginRepository;

  LoginUser({required this.loginRepository});

  Future<Either<Failure, LoginEntity>> call( PostLogin login) async {
    try {
      return  await loginRepository.loginUser(login);
    } catch (e) {
      return Left(Failure( errMessage: 'Failed to login: $e'));
    }
  }
}




// import 'package:dartz/dartz.dart';
// import 'package:feta/features/login/domain/repositories_domain/login_repository.dart';
// import '../../../../core/errors/failure.dart';
// import '../entities/login_entites.dart';
//
// class LoginUser{
//   final LoginRepository loginRepository;
//
//   LoginUser({required this.loginRepository});
//
//   Future<Either<Failure, LoginEntity>> call(){
//     return loginRepository.loginUser();
//   }
// }