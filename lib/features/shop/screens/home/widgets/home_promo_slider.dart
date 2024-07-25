import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:mystore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:mystore/common/widgets/images/rounded_image.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;
  static final ValueNotifier<int> carouselIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: carouselIndexNotifier,
      builder: (context, index, _) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                enlargeCenterPage: true,
                onPageChanged: (index, _) {
                  carouselIndexNotifier.value = index;
                },
              ),
              items: banners.map((url) => MyRoundedImage(imageUrl: url)).toList(),
            ),
            const SizedBox(height: MySizes.spaceBtwItems),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  MyCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor:
                        index == i ? MyColors.primary : MyColors.grey,
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
