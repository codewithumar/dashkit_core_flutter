import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:fake_api_flutter/core/redux_store/app_state.dart';
import 'package:fake_api_flutter/core/utils/opertation.dart';
import 'package:fake_api_flutter/features/splash/actions/all_products_action.dart';
import 'package:fake_api_flutter/features/splash/presentation/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.dispatchAndWait(AllProductsAction());
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = StoreProvider.state<AppState>(context);

    return Scaffold(
      body: state.getOperationState(Opertation.loading).isInProgress
          ? const Center(child: CircularProgressIndicator())
          : const HomePage(),
    );
  }
}
