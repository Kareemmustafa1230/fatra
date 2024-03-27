import 'dart:convert';

import 'package:feta/core/databases/cache/cache_helper.dart';
import 'package:feta/features/login/data/models/login_model.dart';

import '../../../../core/errors/exceptions.dart';

class LoginLocalDataSource{
  final String key = 'cacheLogin';
  final CacheHelper cache ;
  LoginLocalDataSource({required this.cache});

  cacheLogin(LoginModel? userToCache) {
    if(userToCache != null){
     cache.saveData(key: key, value: json.encode(userToCache.toJson()) );
    }else{
    throw CacheExeption(errorMessage: "No Internet connection") ;
    }
  }
  Future<LoginModel>getListUser(){
  final jsonString = cache.getData(key: key);
  if(jsonString!= null){
    return Future.value(LoginModel.fromJson(json.decode(jsonString)));
  }else{
    throw CacheExeption(errorMessage: "No Internet connection") ;
  }
  }
}