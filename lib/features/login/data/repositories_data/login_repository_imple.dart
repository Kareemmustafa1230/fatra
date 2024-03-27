import 'package:dartz/dartz.dart';
import 'package:feta/core/connection/network_info.dart';
import 'package:feta/core/errors/failure.dart';
import 'package:feta/core/params/params.dart';
import 'package:feta/features/login/domain/entities/login_entites.dart';
import '../../../../core/errors/exceptions.dart';
import '../../domain/repositories_domain/login_repository.dart';
import '../data_sources/login_local_data_sources.dart';
import '../data_sources/login_remote_data_sources.dart';

class LoginRepositoryImpl extends LoginRepository {
  final NetworkInfo networkInfo;
  final LoginRemoteDataSource loginRemoteDataSource;
  final LoginLocalDataSource loginLocalDataSource;

  LoginRepositoryImpl(
      {required this.networkInfo,
        required this.loginRemoteDataSource,
        required this.loginLocalDataSource});

  @override
  Future<Either<Failure, LoginEntity>> loginUser(PostLogin login) async {
    if (await networkInfo.isConnected!) {
      try {
        final remoteLogin =
        await loginRemoteDataSource.loginUser(login);
        loginLocalDataSource.cacheLogin(remoteLogin);
        return Right(remoteLogin);
      } on ServerException catch (e) {
        return Left(Failure(errMessage: e.errorModel.message));
      }
    } else {
      try {
        final localUser = await loginLocalDataSource.getListUser();
        return Right(localUser);
      } on CacheExeption catch (e) {
        return Left(Failure(errMessage: e.errorMessage));
      }
    }
  }
}

// import 'package:dartz/dartz.dart';
// import 'package:feta/core/connection/network_info.dart';
// import 'package:feta/core/errors/failure.dart';
// import 'package:feta/features/login/domain/entities/login_entites.dart';
// import '../../../../core/errors/exceptions.dart';
// import '../../domain/repositories_domain/login_repository.dart';
// import '../data_sources/login_local_data_sources.dart';
// import '../data_sources/login_remote_data_sources.dart';
//
// class LoginRepositoryImpl extends LoginRepository{
//
//   final NetworkInfo networkInfo ;
//   final LoginRemoteDataSource loginRemoteDataSource;
//   final LoginLocalDataSource loginLocalDataSource ;
//
//   LoginRepositoryImpl({required this.networkInfo, required this.loginRemoteDataSource, required this.loginLocalDataSource});
//   @override
//   Future<Either<Failure, LoginEntity>> loginUser() async{
//     if (await networkInfo.isConnected!){
//       try{
//     final remoteLogin = await loginRemoteDataSource.loginUser();
//     loginLocalDataSource.cacheLogin(remoteLogin);
//     return Right(remoteLogin) ;
//     } on ServerException catch (e){
//         return Left(Failure(errMessage: e.errorModel.message));
//       }
//     }else{
//       try {
//         final localUser = await loginLocalDataSource.getListUser();
//         return Right(localUser);
//       } on CacheExeption catch (e){
//         return Left(Failure( errMessage:e.errorMessage));
//       }
//     }
//   }
//
// }