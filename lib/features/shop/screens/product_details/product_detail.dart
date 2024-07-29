import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

import 'package:mystore/common/widgets/texts/section_heading.dart';
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
                  const SizedBox(height: MySizes.spaceBtwSections),

                  /// Description
                  const MySectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Futuristic Sneakers. There are more things that can be added but this is just an example.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
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
