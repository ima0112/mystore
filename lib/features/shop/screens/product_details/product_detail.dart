import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:readmore/readmore.dart';

import 'package:mystore/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:mystore/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:mystore/core/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
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
                  const SizedBox(height: MySizes.spaceBtwItems),

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

                  /// Reviews
                  const SizedBox(height: MySizes.spaceBtwItems),
                  const Divider(),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {
                          context.goNamed(MyRoutes.productReviews.name);
                        },
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
