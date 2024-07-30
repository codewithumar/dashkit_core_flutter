import 'package:json_annotation/json_annotation.dart';

part 'get_all_products_response_model.g.dart';

@JsonSerializable()
class GetAllProductsResponseModel {
  GetAllProductsResponseModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory GetAllProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsResponseModelFromJson(json);

  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  Map<String, dynamic> toJson() => _$GetAllProductsResponseModelToJson(this);
}
