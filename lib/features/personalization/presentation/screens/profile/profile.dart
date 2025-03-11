import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/images/circular_image.dart';
import 'package:mystore/core/common_widgets/widgets/shimmer/shimmer.dart';
import 'package:mystore/core/common_widgets/widgets/texts/section_heading.dart';
import 'package:mystore/core/constants/enums.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/features/personalization/presentation/bloc/user/user_bloc.dart';

import 'package:mystore/features/personalization/presentation/screens/profile/widgets/profile_menu.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<UserBloc>();

    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
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
                        Builder(
                          builder: (context) {
                            final networkImage = state.user.photo ?? '';
                            final image = networkImage.isNotEmpty
                                ? networkImage
                                : MyImages.user;

                            return state.status == Status.loading
                                ? const MyShimmerEffect(
                                    width: 80, height: 80, radius: 80)
                                : MyCircularImage(
                                    image: image,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                    isNetworkImage: networkImage.isNotEmpty,
                                  );
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            ImagePicker()
                                .pickImage(source: ImageSource.gallery)
                                .then(
                              (image) {
                                if (image != null) {
                                  if (context.mounted) {
                                    context.read<UserBloc>().add(
                                        UserEvent.updateProfileImage(
                                            image: image));
                                  }
                                }
                              },
                            );
                          },
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
                    value: bloc.state.user.fullName,
                    onPressed: () {
                      context.goNamed(MyRoutes.changeName.name);
                    },
                  ),
                  ProfileMenu(
                    title: 'Username',
                    value: bloc.state.user.username,
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
                    title: 'E-mail',
                    value: bloc.state.user.email,
                    onPressed: () {},
                  ),
                  ProfileMenu(
                    title: 'Phone Number',
                    value: bloc.state.user.phoneNumber,
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
      },
    );
  }
}
