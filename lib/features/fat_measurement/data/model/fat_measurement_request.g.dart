// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fat_measurement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FatMeasurementRequest _$FatMeasurementRequestFromJson(
        Map<String, dynamic> json) =>
    FatMeasurementRequest(
      height: json['height'] as String,
      weight: json['weight'] as String,
      neck: json['neck'] as String,
      middle: json['middle'] as String,
    );

Map<String, dynamic> _$FatMeasurementRequestToJson(
        FatMeasurementRequest instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'height': instance.height,
      'neck': instance.neck,
      'middle': instance.middle,
    };
