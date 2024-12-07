// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodResponse _$FoodResponseFromJson(Map<String, dynamic> json) => FoodResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FoodData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$FoodResponseToJson(FoodResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

FoodData _$FoodDataFromJson(Map<String, dynamic> json) => FoodData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      unit: json['unit'] as int?,
      unitCount: json['unit_count'] as String?,
      mealId: json['meal_id'] as int?,
      categoryId: json['category_id'] as int?,
      mealSystem: json['meal_system'] as String?,
      weight: json['weight'] as int?,
      protein: json['protein'] as int?,
      fats: json['fats'] as int?,
      fiber: json['fiber'] as int?,
      calories: json['calories'] as int?,
      carbs: json['carbs'] as int?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$FoodDataToJson(FoodData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'unit_count': instance.unitCount,
      'meal_id': instance.mealId,
      'category_id': instance.categoryId,
      'meal_system': instance.mealSystem,
      'weight': instance.weight,
      'protein': instance.protein,
      'fats': instance.fats,
      'fiber': instance.fiber,
      'calories': instance.calories,
      'carbs': instance.carbs,
      'img': instance.img,
    };
