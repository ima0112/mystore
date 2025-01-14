import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/brands/brand_show_case.dart';
import 'package:mystore/core/common_widgets/widgets/layouts/grid_layout.dart';
import 'package:mystore/core/common_widgets/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';

import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const MyBrandShowCase(
                images: [
                  MyImages.productImage1,
                  MyImages.productImage5,
                  MyImages.productImage10,
                ],
              ),

              /// Products
              MySectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: MySizes.spaceBtwItems),

              MyGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const MyProductCardVertical();
                },
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
