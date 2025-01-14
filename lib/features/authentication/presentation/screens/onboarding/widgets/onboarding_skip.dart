import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mystore/features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = context.read<OnboardingControllerCubit>();

    return Positioned(
      top: MyDeviceUtils.getAppBarHeight(),
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => onboardingCubit.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
