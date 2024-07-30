library app_theme_state;

import 'package:built_value/built_value.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_theme_state.g.dart';

abstract class AppThemeState
    implements Built<AppThemeState, AppThemeStateBuilder> {
  factory AppThemeState([
    void Function(AppThemeStateBuilder state) updates,
  ]) = _$AppThemeState;

  AppThemeState._();

  factory AppThemeState.initial() {
    return AppThemeState((state) => state.theme = 'light');
  }

  String? get theme;

  static Future<AppThemeState> loadFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('app_theme') ?? 'light';
    return AppThemeState((state) => state.theme = theme);
  }
}
