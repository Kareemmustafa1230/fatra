import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final String name ;
  final String email ;
  final String phone ;
  final String age;
  final String img;

  const UserEntity({
    required this.name,
    required this.email,
    required this.phone,
    required this.img,
    required this.age
  });

  @override
  List<Object?> get props =>
      [
        name,
        email,
        phone,
        age,
        img,
      ];
}