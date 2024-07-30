import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/text_strings.dart';
import 'package:mystore/utils/navigation/go_routes.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyColors.grey),
          ),
          Text(
            MyTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MyColors.white),
          ),
        ],
      ),
      actions: [
        MyCartCounterIcon(
          iconColor: MyColors.white,
          onPressed: () {
            context.goNamed(MyRoutes.cart.name);
          },
        ),
      ],
    );
  }
}
