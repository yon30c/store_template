import 'package:flutter/material.dart';
import 'package:store_template/src/shared/models/product.dart';

class ProductScreen extends StatelessWidget {
  static const String name = 'product-screen';

  const ProductScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductScreen'),
      ),
      body: const Center(
        child: Text('ProductScreen'),
      ),
    );
  }
}
