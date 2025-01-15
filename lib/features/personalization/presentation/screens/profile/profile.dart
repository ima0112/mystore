import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/images/circular_image.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';

import 'package:mystore/features/personalization/presentation/screens/profile/widgets/profile_menu.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';

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
                title: 'Name',
                value: 'Jane Smith',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Username',
                value: 'jane_smith',
                onPressed: () {},
              ),

              const SizedBox(height: MySizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),

              /// Heading Personal Info
              const MySectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              ProfileMenu(
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'E-mail',
                value: 'janesmith@mail.com',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '+1-234-567-8990',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Gender',
                value: 'Female',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Date of Birth',
                value: '24 July, 1994',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
