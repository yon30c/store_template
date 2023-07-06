//! Recuerda importar el paquete de go_router
import 'package:go_router/go_router.dart';
import 'package:store_template/src/featured/screens/screens.dart';
import 'package:store_template/src/shared/models/product.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
    // routes: [
    // //?Sub-rutas del home, se usa para el deeplinking
    // ]
  ),
  GoRoute(
    path: '/product/:product',
    name: ProductScreen.name,
    builder: (context, state) {
      final data = state.extra as Product;
      return ProductScreen( product:  data );
    },
  ),
]);
