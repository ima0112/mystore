import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:mystore/utils/constants/colors.dart';

class MyRatingBarIndicator extends StatelessWidget {
  const MyRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      itemSize: 20,
      allowHalfRating: true,
      unratedColor: MyColors.grey,
      itemBuilder: (context, _) => const Icon(
        Iconsax.star1,
        color: MyColors.primary,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
