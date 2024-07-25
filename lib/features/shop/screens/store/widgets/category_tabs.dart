import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/brands/brand_show_case.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          /// Brands
          MyBrandShowCase(
            images: [
              MyImages.productImage1,
              MyImages.productImage5,
              MyImages.productImage10,
            ],
          ),

          /// Products
        ],
      ),
    );
  }
}
