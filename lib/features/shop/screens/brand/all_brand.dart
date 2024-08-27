import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/brands/brand_card.dart';
import 'package:mystore/common/widgets/layouts/grid_layout.dart';
import 'package:mystore/common/widgets/texts/section_heading.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/navigation/go_routes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              MySectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: MySizes.spaceBtwItems),

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
