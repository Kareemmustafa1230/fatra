// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticlesResponse _$ArticlesResponseFromJson(Map<String, dynamic> json) =>
    ArticlesResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataArticles.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ArticlesResponseToJson(ArticlesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

DataArticles _$DataArticlesFromJson(Map<String, dynamic> json) => DataArticles(
      id: json['id'] as int?,
      category: json['category'] as String?,
      img: json['img'] as String?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      admin: json['admin'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$DataArticlesToJson(DataArticles instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'img': instance.img,
      'title': instance.title,
      'desc': instance.desc,
      'admin': instance.admin,
      'created_at': instance.createdAt,
    };
