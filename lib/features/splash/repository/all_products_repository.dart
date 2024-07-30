import 'package:fake_api_flutter/features/splash/datasource/data_source.dart';
import 'package:fake_api_flutter/features/splash/models/get_all_products_response_model.dart';

class AllProductsRepository {
  final _dataSource = DataSource();

  Future<List<GetAllProductsResponseModel>> fetchAllProducts() async {
    return await _dataSource.getAllProducts();
  }
}
