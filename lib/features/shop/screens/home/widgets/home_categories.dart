import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:mystore/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MyVerticalImageText(
            title: 'Shoes',
            image: MyImages.shoeIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
