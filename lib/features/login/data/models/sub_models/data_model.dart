import 'package:feta/features/login/data/models/sub_models/user_model.dart';
import 'package:feta/features/login/domain/entities/sub_entities/data_entities.dart';

import '../../../../../core/databases/api/end_points.dart';

class DataModel extends DataEntity{
  const DataModel({
    required super.token,
    required super.user
  });
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      token: json[ApiKey.token],
      user: UserModel.fromJson(json[ApiKey.user])
    );
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.token: token,
      ApiKey.user: user
    };
  }
}
