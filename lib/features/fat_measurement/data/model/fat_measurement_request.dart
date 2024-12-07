import 'package:json_annotation/json_annotation.dart';
part 'fat_measurement_request.g.dart';

@JsonSerializable()
class FatMeasurementRequest{
  final String weight;
  final String height;
  final String neck;
  final String middle;

  FatMeasurementRequest( {required this.height,required this.weight,required this.neck,required this.middle,});

  Map<String, dynamic> toJson() => _$FatMeasurementRequestToJson(this);
}