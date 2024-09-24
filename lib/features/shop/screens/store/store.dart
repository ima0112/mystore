import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/tabbar.dart';
import 'package:mystore/core/common_widgets/widgets/brands/brand_card.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/search_container.dart';
import 'package:mystore/core/common_widgets/widgets/layouts/grid_layout.dart';
import 'package:mystore/core/common_widgets/widgets/product/cart/cart_menu_icon.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';

import 'package:mystore/features/shop/screens/store/widgets/category_tabs.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            MyCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          /// Header
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: MyHelperFunctions.isDarkMode(context)
                    ? MyColors.black
                    : MyColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Bar
                      const SizedBox(height: MySizes.spaceBtwItems),
                      const MySearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: MySizes.spaceBtwSections),

                      /// Featured Brands
                      MySectionHeading(
                        title: 'Featured Brand',
                        showActionButton: true,
                        onPressed: () {
                          context.goNamed(MyRoutes.allBrands.name);
                        },
                      ),
                      const SizedBox(height: MySizes.spaceBtwItems / 1.5),

                      MyGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const MyBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: const MyTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furnitures')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          /// Body
          body: const TabBarView(
            children: [
              CategoryTabs(),
              CategoryTabs(),
              CategoryTabs(),
              CategoryTabs(),
              CategoryTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
