import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/core/common_widgets/widgets/images/circular_image.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/features/personalization/presentation/bloc/user/user_bloc.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<UserBloc>();

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
        bloc.state.user.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyColors.white),
      ),
      subtitle: Text(
        bloc.state.user.email,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MyColors.white),
      ),
    );
  }
}
