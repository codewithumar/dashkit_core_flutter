import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:fake_api_flutter/core/redux_store/app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeAction extends Action<AppState> {
  @override
  AppState reduce() {
    final newState = state.rebuild((b) {
      b.appThemeState.theme == 'dark'
          ? b.appThemeState.theme = 'light'
          : b.appThemeState.theme = 'dark';
    });

    _saveThemePreference(newState.appThemeState.theme!);
    return newState;
  }

  Future<void> _saveThemePreference(String theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('app_theme', theme);
  }
}
