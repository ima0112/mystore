import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/search_container.dart';
import 'package:mystore/core/common_widgets/widgets/layouts/grid_layout.dart';
import 'package:mystore/core/common_widgets/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';
import 'package:mystore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mystore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mystore/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const MyPrimaryHeaderContainer(
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
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  const HomePromoSlider(
                    banners: [
                      MyImages.promoBanner1,
                      MyImages.promoBanner2,
                      MyImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),

                  /// Heading
                  MySectionHeading(
                    title: 'Popular Product',
                    onPressed: () {
                      context.goNamed(MyRoutes.allProducts.name);
                    },
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),

                  /// Popular Products
                  MyGridLayout(
                    itemCount: 4,
                    mainAxisExtent: 260,
                    itemBuilder: (_, index) {
                      return const MyProductCardVertical();
                    },
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
