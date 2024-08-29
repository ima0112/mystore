import 'package:flutter/material.dart';

import 'package:mystore/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: const Column(
          children: [
            /// Product Image Slider
            ProductImageSlider(),
          ],
        ),
      ),
    );
  }
}
