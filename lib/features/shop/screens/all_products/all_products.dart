import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/layouts/grid_layout.dart';
import 'package:mystore/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mystore/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const MyAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Dropdown
              DropdownButtonFormField(
                decoration:
                    const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                items: ['Name', 'Higher Price', 'Lower Price', 'Newest']
                    .map((option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Products
              MyGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) => const MyProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
