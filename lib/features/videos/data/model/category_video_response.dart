import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_video_response.g.dart';

@JsonSerializable()
class CategoryVideoResponse {
  List<CategoryVideoData>? data;
  String? message;
  int? status;

  CategoryVideoResponse({this.data, this.message, this.status});

  factory CategoryVideoResponse.fromJson(Map<String, dynamic> json) => _$CategoryVideoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryVideoResponseToJson(this);
}

@JsonSerializable()
class CategoryVideoData {
  int? id;
  String? name;
  String? img;

  CategoryVideoData({this.id, this.name, this.img});

  factory CategoryVideoData.fromJson(Map<String, dynamic> json) => _$CategoryVideoDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryVideoDataToJson(this);
}
