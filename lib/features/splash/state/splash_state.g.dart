// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SplashState extends SplashState {
  @override
  final String? name;
  @override
  final List<GetAllProductsResponseModel> products;

  factory _$SplashState([void Function(SplashStateBuilder)? updates]) =>
      (new SplashStateBuilder()..update(updates))._build();

  _$SplashState._({this.name, required this.products}) : super._() {
    BuiltValueNullFieldError.checkNotNull(products, r'SplashState', 'products');
  }

  @override
  SplashState rebuild(void Function(SplashStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashStateBuilder toBuilder() => new SplashStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashState &&
        name == other.name &&
        products == other.products;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SplashState')
          ..add('name', name)
          ..add('products', products))
        .toString();
  }
}

class SplashStateBuilder implements Builder<SplashState, SplashStateBuilder> {
  _$SplashState? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  List<GetAllProductsResponseModel>? _products;
  List<GetAllProductsResponseModel>? get products => _$this._products;
  set products(List<GetAllProductsResponseModel>? products) =>
      _$this._products = products;

  SplashStateBuilder();

  SplashStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _products = $v.products;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SplashState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SplashState;
  }

  @override
  void update(void Function(SplashStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SplashState build() => _build();

  _$SplashState _build() {
    final _$result = _$v ??
        new _$SplashState._(
            name: name,
            products: BuiltValueNullFieldError.checkNotNull(
                products, r'SplashState', 'products'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
