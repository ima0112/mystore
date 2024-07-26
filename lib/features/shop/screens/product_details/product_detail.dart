import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            MyCurvedEdgeWidget(
              child: Container(
                color: dark ? MyColors.darkerGrey : MyColors.light,
                child: Stack(
                  children: [
                    Image(image: AssetImage(MyImages.productImage1)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
