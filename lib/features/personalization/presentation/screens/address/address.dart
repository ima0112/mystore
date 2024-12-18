import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:iconsax/iconsax.dart';

import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/features/personalization/presentation/screens/address/widgets/single_address.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.goNamed(MyRoutes.newAddress.name);
        },
        backgroundColor: MyColors.primary,
        child: const Icon(
          Iconsax.add,
          color: MyColors.white,
        ),
      ),
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
