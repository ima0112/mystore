import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/brands/brand_card.dart';
import 'package:mystore/common/widgets/product/sortable/sortable_products.dart';
import 'package:mystore/utils/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
