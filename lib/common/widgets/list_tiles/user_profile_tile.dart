import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/widgets/images/circular_image.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
  });

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
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: MyColors.white),
      ),
      title: Text(
        'Imandra Cardenas',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyColors.white),
      ),
      subtitle: Text(
        'imandracardenas0@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MyColors.white),
      ),
    );
  }
}
