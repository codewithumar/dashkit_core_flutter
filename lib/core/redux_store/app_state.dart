library app_state;

import 'package:built_value/built_value.dart';
import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:fake_api_flutter/core/app_theme/app_theme_state.dart';
import 'package:fake_api_flutter/features/splash/state/splash_state.dart';

part 'app_state.g.dart';

abstract class AppState
    implements Built<AppState, AppStateBuilder>, GlobalState {
  factory AppState([
    void Function(AppStateBuilder state) updates,
  ]) = _$AppState;

  AppState._();

  SplashState get splashState;
  AppThemeState get appThemeState;

  factory AppState.initial() {
    return AppState(
      (state) => state
        ..splashState = SplashState.initial().toBuilder()
        ..appThemeState = AppThemeState.initial().toBuilder(),
    );
  }

  @override
  T updateOperation<T extends GlobalState>(
    Object? operationKey,
    OperationState operationState,
  ) {
    if (operationKey == null) {
      return this as T;
    }

    final GlobalState newState = rebuild(
      (s) => s.operationsState[operationKey] = operationState,
    );
    return newState as T;
  }

  @override
  BuiltMap<Object, OperationState> get operationsState;

  @override
  OperationState getOperationState(Object operationKey) {
    return operationsState[operationKey] ?? OperationState.idle;
  }
}
