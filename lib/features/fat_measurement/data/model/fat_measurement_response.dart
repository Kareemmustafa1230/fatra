import 'package:json_annotation/json_annotation.dart';
part 'fat_measurement_response.g.dart';

@JsonSerializable()
class FatMeasurementResponse {
  FatMeasurementResponse({
    this.data,
    this.message,
    this.status,
  });

  FatMeasurementData? data;
  String? message;
  int? status;

  factory FatMeasurementResponse.fromJson(Map<String, dynamic> json) => _$FatMeasurementResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FatMeasurementResponseToJson(this);
}

@JsonSerializable()
class FatMeasurementData {
  FatMeasurementData({
    this.bodyFat,
    this.fatMass,
    this.leanMass,
    this.fatCategory,
  });
  @JsonKey(name: 'BodyFat')
  String? bodyFat;
  @JsonKey(name: 'FatMass')
  int? fatMass;
  @JsonKey(name: 'LeanMass')
  int? leanMass;
  @JsonKey(name: 'fat_category')
  String? fatCategory;

  factory FatMeasurementData.fromJson(Map<String, dynamic> json) => _$FatMeasurementDataFromJson(json);

  Map<String, dynamic> toJson()  => _$FatMeasurementDataToJson(this);
}
