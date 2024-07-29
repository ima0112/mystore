import 'package:flutter/material.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/product_attribute.dart';

import 'package:mystore/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:mystore/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const ProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: MySizes.defaultSpace,
                  left: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share Button
                  const RatingAndShare(),

                  /// Price, Title, Stock & Brand
                  const ProductMetaData(),

                  /// Attributes
                  const ProductAttribute(),
                  const SizedBox(height: MySizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
