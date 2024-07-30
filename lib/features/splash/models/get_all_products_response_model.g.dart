// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllProductsResponseModel _$GetAllProductsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAllProductsResponseModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$GetAllProductsResponseModelToJson(
        GetAllProductsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
    };
