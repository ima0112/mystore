import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:mystore/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgeWidget(
      child: Container(
        color: MyColors.primary,
        padding: const EdgeInsets.only(
            bottom: MySizes.spaceBtwSections, left: 0, right: 0, top: 0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: MyCircularContainer(
                  backgroundColor: MyColors.textWhite.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: MyCircularContainer(
                  backgroundColor: MyColors.textWhite.withOpacity(0.1)),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
