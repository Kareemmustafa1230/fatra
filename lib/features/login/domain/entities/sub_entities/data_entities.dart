import 'package:equatable/equatable.dart';
import 'package:feta/features/login/domain/entities/sub_entities/user_entities.dart';

class DataEntity extends Equatable{
  final UserEntity user ;
  final String token ;
  const DataEntity({
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props =>
      [
        user,
        token,
      ];
}