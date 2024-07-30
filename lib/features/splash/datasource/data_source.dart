import 'package:dio/dio.dart';
import 'package:fake_api_flutter/features/splash/models/get_all_products_response_model.dart';

class DataSource {
  final _dio = Dio();

  Future<List<GetAllProductsResponseModel>> getAllProducts() async {
    final data = await _dio.get('https://fakestoreapi.com/products').then(
      (onValue) {
        final data = onValue.data as List<dynamic>;
        return data.map((e) {
          final val =
              GetAllProductsResponseModel.fromJson(e as Map<String, dynamic>);

          return val;
        }).toList();
      },
    );
    return data;
  }
}
