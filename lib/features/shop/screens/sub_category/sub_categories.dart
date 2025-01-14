import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/images/rounded_image.dart';

import 'package:mystore/core/common_widgets/widgets/product/product_cards/product_card_horizontal.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const MyRoundedImage(
                width: double.infinity,
                imageUrl: MyImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  MySectionHeading(
                    title: 'Sports sneakers',
                    onPressed: () {},
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: MySizes.spaceBtwItems,
                      ),
                      itemBuilder: (context, index) {
                        return const MyProductCardHorizontal();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
