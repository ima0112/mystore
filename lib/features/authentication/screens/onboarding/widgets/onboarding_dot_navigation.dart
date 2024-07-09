import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mystore/features/authentication/bloc/onboarding_controller/onboarding_controller_cubit.dart';

import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/device/device_utility.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = context.read<OnboardingControllerCubit>();
    final dark = MyHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MySizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: onboardingCubit.pageController,
        onDotClicked: onboardingCubit.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyColors.light : MyColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
