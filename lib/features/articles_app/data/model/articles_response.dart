import 'package:freezed_annotation/freezed_annotation.dart';
part 'articles_response.g.dart';

@JsonSerializable()
class ArticlesResponse {
  List<DataArticles>? data;
  String? message;
  int? status;

  ArticlesResponse({this.data, this.message, this.status});

  factory ArticlesResponse.fromJson(Map<String, dynamic> json) => _$ArticlesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesResponseToJson(this);
}

@JsonSerializable()
class DataArticles {
  int? id;
  String? category;
  String? img;
  String? title;
  String? desc;
  String? admin;
  @JsonKey(name: 'created_at')
  String? createdAt;

  DataArticles({
    this.id,
    this.category,
    this.img,
    this.title,
    this.desc,
    this.admin,
    this.createdAt,
  });

  factory DataArticles.fromJson(Map<String, dynamic> json) => _$DataArticlesFromJson(json);

  Map<String, dynamic> toJson() => _$DataArticlesToJson(this);
}
