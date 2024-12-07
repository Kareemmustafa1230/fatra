import 'package:json_annotation/json_annotation.dart';
part 'female_fat_measurement_request.g.dart';

@JsonSerializable()
class FemaleFatMeasurementRequest{
  final String weight;
  final String height;
  final String neck;
  final String middle;
  final String hip;

  FemaleFatMeasurementRequest({required this.height,required this.weight,required this.neck,required this.middle,required this.hip});

  Map<String, dynamic> toJson() => _$FemaleFatMeasurementRequestToJson(this);
}