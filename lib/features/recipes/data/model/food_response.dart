import 'package:json_annotation/json_annotation.dart';
part 'food_response.g.dart';

@JsonSerializable()
class FoodResponse {
  FoodResponse({
    this.data,
    this.status,
  });

  List<FoodData>? data;
  int? status;

  factory FoodResponse.fromJson(Map<String, dynamic> json) => _$FoodResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FoodResponseToJson(this);
}

@JsonSerializable()
class FoodData {
  FoodData({
    this.id,
    this.name,
    this.unit,
    this.unitCount,
    this.mealId,
    this.categoryId,
    this.mealSystem,
    this.weight,
    this.protein,
    this.fats,
    this.fiber,
    this.calories,
    this.carbs,
    this.img,
  });

  int? id;
  String? name;
  int? unit;
  @JsonKey(name: 'unit_count')
  String? unitCount;
  @JsonKey(name: 'meal_id')
  int? mealId;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'meal_system')
  String? mealSystem;
  int? weight;
  int? protein;
  int? fats;
  int? fiber;
  int? calories;
  int? carbs;
  String? img;

  factory FoodData.fromJson(Map<String, dynamic> json) => _$FoodDataFromJson(json);

  Map<String, dynamic> toJson() => _$FoodDataToJson(this);
}
