import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:fake_api_flutter/core/app_theme/app_theme_action.dart';
import 'package:fake_api_flutter/core/redux_store/app_state.dart';
import 'package:fake_api_flutter/features/splash/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = StoreProvider.state<AppState>(context);
    final products = state.splashState.products;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.color_lens,
            ),
            onPressed: () => {
              context.dispatch(
                AppThemeAction(),
              ),
            },
          ),
        ],
      ),
      body: Center(
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              product: product,
            );
          },
        ),
      ),
    );
  }
}
