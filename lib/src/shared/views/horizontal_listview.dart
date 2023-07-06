import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';



class HorizontalListview extends StatelessWidget {
  const HorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;

    return SizedBox(
      height: size.height * 0.3,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Esta Temporada',
              style: textStyle.titleLarge,
            ),
          ),
          const Expanded(child: _HorizontalView())
        ],
      ),
    );
  }
}

class _HorizontalView extends StatelessWidget {
  const _HorizontalView();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Swiper(
      autoplay: true,
      viewportFraction: 0.35,
      itemCount: products.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAlias,
          height: size.height * 0.2,
          width: size.width * 0.35,
          child: Image.asset(product.imageUrl,fit: BoxFit.cover,),
        );
      },
    );
  }
}
