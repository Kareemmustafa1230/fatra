import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_articles_response.g.dart';

@JsonSerializable()
class CategoryArticlesResponse {
  List<DataCategory>? data;
  String? message;
  int? status;

  CategoryArticlesResponse({this.data, this.message, this.status});

  factory CategoryArticlesResponse.fromJson(Map<String, dynamic> json) => _$CategoryArticlesResponseFromJson(json);


}

@JsonSerializable()
class DataCategory {
  int? id;
  String? name;
  String? img;

  DataCategory({this.id, this.name, this.img});

  factory DataCategory.fromJson(Map<String, dynamic> json) => _$DataCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$DataCategoryToJson(this);


}
