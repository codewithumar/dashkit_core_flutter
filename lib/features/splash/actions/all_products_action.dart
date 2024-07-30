import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:fake_api_flutter/core/redux_store/app_state.dart';
import 'package:fake_api_flutter/core/utils/opertation.dart';
import 'package:fake_api_flutter/features/splash/repository/all_products_repository.dart';

class AllProductsAction extends Action<AppState> {
  @override
  Opertation get operationKey => Opertation.loading;
  @override
  Future<AppState> reduce() async {
    final allProductsRepitory = AllProductsRepository();
    final data = await allProductsRepitory.fetchAllProducts();

    return state.rebuild((b) => b..splashState.products = data);
  }
}
