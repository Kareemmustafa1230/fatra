// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryVideoResponse _$CategoryVideoResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryVideoResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryVideoData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$CategoryVideoResponseToJson(
        CategoryVideoResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

CategoryVideoData _$CategoryVideoDataFromJson(Map<String, dynamic> json) =>
    CategoryVideoData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$CategoryVideoDataToJson(CategoryVideoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
    };
