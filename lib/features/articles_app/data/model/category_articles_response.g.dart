// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryArticlesResponse _$CategoryArticlesResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryArticlesResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$CategoryArticlesResponseToJson(
        CategoryArticlesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

DataCategory _$DataCategoryFromJson(Map<String, dynamic> json) => DataCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$DataCategoryToJson(DataCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
    };
