

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class VideosResponse {
  VideosResponse({
      this.data, 
      this.message, 
      this.status,});

  VideosResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }
  List<Data>? data;
  String? message;
  int? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    map['status'] = status;
    return map;
  }

}

/// id : 2
/// name : "Celeste Bowers"
/// desc : "Eos veniam commodi"
/// video : null
/// link : "Veritatis quia qui e"
/// img : "https://fetra.testm.online/storage/userss/users_65f03aa30409e.png"
/// category : {"id":17,"name":"النحافة","img":"https://fetra.testm.online/storage/categories/1.png"}

@JsonSerializable()
class Data {
  Data({
      this.id, 
      this.name, 
      this.desc, 
      this.video, 
      this.link, 
      this.img, 
      this.category,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    video = json['video'];
    link = json['link'];
    img = json['img'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  int? id;
  String? name;
  String? desc;
  dynamic video;
  String? link;
  String? img;
  Category? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['desc'] = desc;
    map['video'] = video;
    map['link'] = link;
    map['img'] = img;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    return map;
  }

}

/// id : 17
/// name : "النحافة"
/// img : "https://fetra.testm.online/storage/categories/1.png"

class Category {
  Category({
      this.id, 
      this.name, 
      this.img,});

  Category.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
  }
  int? id;
  String? name;
  String? img;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['img'] = img;
    return map;
  }

}