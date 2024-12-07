// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'female_fat_measurement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FemaleFatMeasurementRequest _$FemaleFatMeasurementRequestFromJson(
        Map<String, dynamic> json) =>
    FemaleFatMeasurementRequest(
      height: json['height'] as String,
      weight: json['weight'] as String,
      neck: json['neck'] as String,
      middle: json['middle'] as String,
      hip: json['hip'] as String,
    );

Map<String, dynamic> _$FemaleFatMeasurementRequestToJson(
        FemaleFatMeasurementRequest instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'height': instance.height,
      'neck': instance.neck,
      'middle': instance.middle,
      'hip': instance.hip,
    };
