library splash_state;

import 'package:built_value/built_value.dart';
import 'package:fake_api_flutter/features/splash/models/get_all_products_response_model.dart';

part 'splash_state.g.dart';

abstract class SplashState implements Built<SplashState, SplashStateBuilder> {
  factory SplashState([
    void Function(SplashStateBuilder state) updates,
  ]) = _$SplashState;

  SplashState._();

  factory SplashState.initial() => SplashState((state) => state
    ..name = 'Splash'
    ..products = []);

  String? get name;
  List<GetAllProductsResponseModel> get products;
}
