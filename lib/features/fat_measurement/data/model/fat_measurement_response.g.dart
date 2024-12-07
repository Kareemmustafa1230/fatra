// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fat_measurement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FatMeasurementResponse _$FatMeasurementResponseFromJson(
        Map<String, dynamic> json) =>
    FatMeasurementResponse(
      data: json['data'] == null
          ? null
          : FatMeasurementData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$FatMeasurementResponseToJson(
        FatMeasurementResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

FatMeasurementData _$FatMeasurementDataFromJson(Map<String, dynamic> json) =>
    FatMeasurementData(
      bodyFat: json['BodyFat'] as String?,
      fatMass: json['FatMass'] as int?,
      leanMass: json['LeanMass'] as int?,
      fatCategory: json['fat_category'] as String?,
    );

Map<String, dynamic> _$FatMeasurementDataToJson(FatMeasurementData instance) =>
    <String, dynamic>{
      'BodyFat': instance.bodyFat,
      'FatMass': instance.fatMass,
      'LeanMass': instance.leanMass,
      'fat_category': instance.fatCategory,
    };
