import 'package:async_redux/async_redux.dart';
import 'package:fake_api_flutter/core/app_theme/app_theme_state.dart';
import 'package:fake_api_flutter/core/redux_store/app_state.dart';
import 'package:fake_api_flutter/features/splash/state/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:fake_api_flutter/core/app_theme/app_theme.dart';
import 'package:fake_api_flutter/features/splash/presentation/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initialThemeState = await AppThemeState.loadFromPreferences();
  runApp(
    StoreProvider<AppState>(
      store: Store(
          // initialState: AppState.initial(),
          initialState: AppState((b) => b
            ..appThemeState = initialThemeState.toBuilder()
            ..splashState = SplashState.initial().toBuilder())),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final state = StoreProvider.state<AppState>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      // darkTheme: AppTheme.dark,
      theme:
          state.appThemeState.theme == 'dark' ? AppTheme.dark : AppTheme.light,
      home: StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, appstate) => const SplashScreen(),
      ),
    );
  }
}
