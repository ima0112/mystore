import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/brands/brand_card.dart';
import 'package:mystore/core/common_widgets/widgets/layouts/grid_layout.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const MySectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              /// Brands
              MyGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) {
                  return MyBrandCard(
                    showBorder: true,
                    onTap: () {
                      context.goNamed(MyRoutes.brandProducts.name);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
