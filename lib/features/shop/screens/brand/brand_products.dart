import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/brands/brand_card.dart';
import 'package:mystore/core/common_widgets/widgets/product/sortable/sortable_products.dart';

import 'package:mystore/core/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Close Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Details
              MyBrandCard(showBorder: true),
              SizedBox(height: MySizes.spaceBtwSections),

              MySortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
