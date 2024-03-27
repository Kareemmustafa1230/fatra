import 'package:equatable/equatable.dart';
import 'package:feta/features/login/domain/entities/sub_entities/data_entities.dart';

class LoginEntity extends Equatable {
  final int status;
  final String message;
  final DataEntity data;

  const LoginEntity({
  required this.status,
  required this.message,
  required this.data,
  });

  @override
  List<Object?> get props =>
  [
  status,
  message,
  data,
  ];
  }