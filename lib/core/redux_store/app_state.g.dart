// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final SplashState splashState;
  @override
  final AppThemeState appThemeState;
  @override
  final BuiltMap<Object, OperationState> operationsState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.splashState,
      required this.appThemeState,
      required this.operationsState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        splashState, r'AppState', 'splashState');
    BuiltValueNullFieldError.checkNotNull(
        appThemeState, r'AppState', 'appThemeState');
    BuiltValueNullFieldError.checkNotNull(
        operationsState, r'AppState', 'operationsState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        splashState == other.splashState &&
        appThemeState == other.appThemeState &&
        operationsState == other.operationsState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, splashState.hashCode);
    _$hash = $jc(_$hash, appThemeState.hashCode);
    _$hash = $jc(_$hash, operationsState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('splashState', splashState)
          ..add('appThemeState', appThemeState)
          ..add('operationsState', operationsState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  SplashStateBuilder? _splashState;
  SplashStateBuilder get splashState =>
      _$this._splashState ??= new SplashStateBuilder();
  set splashState(SplashStateBuilder? splashState) =>
      _$this._splashState = splashState;

  AppThemeStateBuilder? _appThemeState;
  AppThemeStateBuilder get appThemeState =>
      _$this._appThemeState ??= new AppThemeStateBuilder();
  set appThemeState(AppThemeStateBuilder? appThemeState) =>
      _$this._appThemeState = appThemeState;

  MapBuilder<Object, OperationState>? _operationsState;
  MapBuilder<Object, OperationState> get operationsState =>
      _$this._operationsState ??= new MapBuilder<Object, OperationState>();
  set operationsState(MapBuilder<Object, OperationState>? operationsState) =>
      _$this._operationsState = operationsState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _splashState = $v.splashState.toBuilder();
      _appThemeState = $v.appThemeState.toBuilder();
      _operationsState = $v.operationsState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              splashState: splashState.build(),
              appThemeState: appThemeState.build(),
              operationsState: operationsState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'splashState';
        splashState.build();
        _$failedField = 'appThemeState';
        appThemeState.build();
        _$failedField = 'operationsState';
        operationsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
