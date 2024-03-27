import 'package:feta/core/databases/api/end_points.dart';
import 'package:feta/features/login/domain/entities/sub_entities/user_entities.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.img,
    required super.age
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      img: json['img'],
      age: json['age']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'img': img,
      'age': age
    };
  }
}