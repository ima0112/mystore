import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/product/ratings/rating_indicator.dart';
import 'package:mystore/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Reviews & Ratings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: MySizes.spaceBtwItems),

              /// Overall Product Ratings
              OverallProductRatings(),
              MyRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MySizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
