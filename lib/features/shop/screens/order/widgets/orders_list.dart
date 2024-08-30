import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
        itemBuilder: (context, index) {
          return MyRoundedContainer(
            showBorder: true,
            padding: const EdgeInsets.all(MySizes.md),
            backgroundColor: dark ? MyColors.dark : MyColors.light,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    /// Icon
                    const Icon(Iconsax.ship),
                    const SizedBox(width: MySizes.spaceBtwItems / 2),

                    /// Status and Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                                color: MyColors.primary, fontWeightDelta: 1),
                          ),
                          Text(
                            '08 Nov 2014',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),

                    /// Icon
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.arrow_right_34,
                        size: MySizes.iconSm,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          /// Icon
                          const Icon(Iconsax.tag),
                          const SizedBox(width: MySizes.spaceBtwItems / 2),

                          /// Order Id
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '[#458f2]',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          /// Icon
                          const Icon(Iconsax.calendar),
                          const SizedBox(width: MySizes.spaceBtwItems / 2),

                          /// Shipping Date
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipping Date',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '03 Feb 2025',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
