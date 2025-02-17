import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/layouts/grid_layout.dart';
import 'package:mystore/core/common_widgets/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mystore/core/constants/sizes.dart';


class MySortableProducts extends StatelessWidget {
  const MySortableProducts({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
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
    );
  }
}
