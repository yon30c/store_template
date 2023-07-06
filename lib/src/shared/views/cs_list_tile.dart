import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/product.dart';


class CsListTile extends StatelessWidget {
  const CsListTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    return ColoredBox(
      color: color.background,
      child: Row(children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
            )),
        GestureDetector(
        onTap: () => context.push('/product/${product.id}', extra: product),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title,style: textStyle.titleMedium,),
                Text(product.provider,style: textStyle.bodySmall,),
                const SizedBox(height: 5,),
                Text(r'Precio: 189$', style: textStyle.labelMedium,),
                Text(product.details),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
