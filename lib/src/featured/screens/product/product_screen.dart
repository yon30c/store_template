import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_template/src/shared/models/product.dart';

class ProductScreen extends StatefulWidget {
  static const String name = 'product-screen';

  const ProductScreen({super.key, required this.product});

  final Product product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late SwiperController controller;

  @override
  void initState() {
    super.initState();
    controller = SwiperController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: color.primaryContainer,
        appBar: AppBar(
          title: Text(widget.product.title),
        ),
        body: Column(
          children: [
            _CsImages(size: size, controller: controller, widget: widget),
          ],
        ));
  }
}

class _CsImages extends StatelessWidget {
  const _CsImages({
    super.key,
    required this.size,
    required this.controller,
    required this.widget,
  });

  final Size size;
  final SwiperController controller;
  final ProductScreen widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.4,
      child: Swiper(
        controller: controller,

          outer: true,
          pagination: const SwiperPagination(),
          viewportFraction: 0.9,
          itemCount: 3,
          itemBuilder: (context, index) => Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(8.0),
            child: Image.asset(
                  widget.product.imageUrl,
                  fit: BoxFit.cover,
                ),
          )),
    );
  }
}
