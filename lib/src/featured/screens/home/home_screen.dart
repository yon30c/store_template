import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_template/src/shared/models/product.dart';

import '../../../shared/views/views.dart';


class HomeScreen extends StatelessWidget {
  static const String name = 'Home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(), body: _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: color.primaryContainer,
          foregroundColor: color.onPrimaryContainer,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          title: const Text('MyStore'),
          // centerTitle: true,
          floating: true,
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 65),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      prefixIcon: const Icon(Icons.shopping_bag_rounded),
                      filled: true,
                      hintText: 'Buscar producto',
                      fillColor: color.background,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
              )),
        ),
        SliverList( 
            delegate: SliverChildListDelegate([
          const HorizontalListview(),
          Container(
            color: color.background,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Productos',
              style: textStyle.titleLarge,
            ),
          ),
          ...products.map((e) => GestureDetector(
              onTap: () => context.push('/product/${e.id}', extra: e),
              child: CsListTile(
                product: e,
              )))
        ]))
      ],
    );
  }
}
