import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:mystore/core/common_widgets/widgets/list_tiles/settings_menu_tile.dart';
import 'package:mystore/core/common_widgets/widgets/list_tiles/user_profile_tile.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';

import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (message) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.errorSnackBar(message: message));
          },
          loggedOut: () {
            context.goNamed(MyRoutes.login.name);
          },
        );
      },
      child: Scaffold(
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
                    MyUserProfileTile(
                      onPressed: () {
                        context.goNamed(MyRoutes.profile.name);
                      },
                    ),
                  ],
                ),
              ),

              /// Body
              Padding(
                padding: const EdgeInsets.all(MySizes.defaultSpace),
                child: Column(
                  children: [
                    /// Account Settings
                    const MySectionHeading(
                      title: 'Account Settings',
                      showActionButton: false,
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    MySettingMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subtitle: 'Set shopping delivery address',
                      onTap: () {
                        context.goNamed(MyRoutes.address.name);
                      },
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout',
                      onTap: () {},
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-progress and Completed Orders',
                      onTap: () {
                        context.goNamed(MyRoutes.orders.name);
                      },
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account',
                      onTap: () {},
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons',
                      onTap: () {},
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notification message',
                      onTap: () {},
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts',
                      onTap: () {},
                    ),

                    /// App Settings
                    const SizedBox(height: MySizes.spaceBtwSections),
                    const MySectionHeading(
                        title: 'App Settings', showActionButton: false),
                    const SizedBox(height: MySizes.spaceBtwItems),
                    const MySettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase',
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subtitle: 'Set image quality to be seen',
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ),

                    /// Logout Button
                    const SizedBox(height: MySizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          context.read<AuthenticationBloc>().add(
                                const AuthenticationEvent.logout(),
                              );
                        },
                        child: const Text('Logout'),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwSections * 2.5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
