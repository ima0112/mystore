import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:mystore/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mystore/common/widgets/texts/section_heading.dart';
import 'package:mystore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mystore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mystore/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  HomeAppBar(),
                  SizedBox(height: MySizes.spaceBtwSections),

                  /// Searchbar
                  MySearchContainer(text: 'Search in Store'),
                  SizedBox(height: MySizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        MySectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: MySizes.spaceBtwItems),

                        /// Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  HomePromoSlider(
                    banners: [
                      MyImages.promoBanner1,
                      MyImages.promoBanner2,
                      MyImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: MySizes.spaceBtwSections),

                  /// Popular Products
                  MyProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
