import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/shimmer/shimmer.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';

import 'package:mystore/core/utils/helpers/helper_functions.dart';

class MyCircularImage extends StatelessWidget {
  const MyCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding = MySizes.sm,
    this.isNetworkImage = false,
    required this.image,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 40,
      foregroundImage: isNetworkImage
          ? CachedNetworkImageProvider(
              image,
            )
          : AssetImage(image),
      child: const MyShimmerEffect(width: 80, height: 80, radius: 80),
    );
  }
}
