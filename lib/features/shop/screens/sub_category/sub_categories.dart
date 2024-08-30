import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/images/rounded_image.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Sports sneakers'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              MyRoundedImage(
                width: double.infinity,
                imageUrl: MyImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
