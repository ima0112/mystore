import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/images/circular_image.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/image_strings.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: MyColors.white),
      ),
      title: Text(
        'Jane Smith',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyColors.white),
      ),
      subtitle: Text(
        'janesmith@mail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MyColors.white),
      ),
    );
  }
}
