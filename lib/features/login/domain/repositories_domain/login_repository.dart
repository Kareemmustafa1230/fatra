import 'package:dartz/dartz.dart';
import 'package:feta/core/errors/failure.dart';
import '../../../../core/params/params.dart';
import '../entities/login_entites.dart';

abstract class LoginRepository {
 Future<Either<Failure, LoginEntity>> loginUser(PostLogin login);
}


// import 'package:dartz/dartz.dart';
// import 'package:feta/core/errors/failure.dart';
// import 'package:feta/features/login/domain/entities/login_entites.dart';
//
// abstract class LoginRepository{
//  Future<Either<Failure,LoginEntity>>loginUser();
// }