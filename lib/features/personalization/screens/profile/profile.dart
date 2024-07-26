import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/images/circular_image.dart';
import 'package:mystore/common/widgets/texts/section_heading.dart';
import 'package:mystore/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(
                        image: MyImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),

              /// Heading Profile Info
              const MySectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              ProfileMenu(
                  title: 'Name', value: 'Imandra Cardenas', onPressed: () {}),
              ProfileMenu(
                title: 'Username',
                value: 'imandra_cardenas',
                onPressed: () {},
              ),

              const SizedBox(height: MySizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
