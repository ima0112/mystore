import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:mystore/common/widgets/images/circular_image.dart';
import 'package:mystore/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  MyAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: MyColors.white),
                    ),
                  ),

                  /// User Profile Card
                  const MyUserProfileTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
