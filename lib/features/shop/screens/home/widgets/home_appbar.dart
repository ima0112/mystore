import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/product/cart/cart_menu_icon.dart';

import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/features/personalization/presentation/bloc/user/user_bloc.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<UserBloc>();

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
            bloc.state.user.fullName,
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
