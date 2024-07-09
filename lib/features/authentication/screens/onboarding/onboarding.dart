import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mystore/features/authentication/bloc/onboarding_controller/onboarding_controller_cubit.dart';

import 'package:mystore/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mystore/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mystore/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mystore/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingControllerCubit(),
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          final onboardingCubit = context.read<OnboardingControllerCubit>();

          return Scaffold(
            body: Stack(
              children: [
                // Horizontal Scrollable Pages
                PageView(
                  controller: onboardingCubit.pageController,
                  onPageChanged: onboardingCubit.updatePageIndicator,
                  children: const [
                    OnBoardingPage(
                      image: MyImages.onBoardingImage1,
                      title: MyTexts.onBoardingTitle1,
                      subtitle: MyTexts.onBoardingSubTitle1,
                    ),
                    OnBoardingPage(
                      image: MyImages.onBoardingImage2,
                      title: MyTexts.onBoardingTitle2,
                      subtitle: MyTexts.onBoardingSubTitle2,
                    ),
                    OnBoardingPage(
                      image: MyImages.onBoardingImage3,
                      title: MyTexts.onBoardingTitle3,
                      subtitle: MyTexts.onBoardingSubTitle3,
                    ),
                  ],
                ),

                // Skip Button
                const OnBoardingSkip(),

                // Dot Navigation SmoothPageIndicator
                const OnBoardingDotNavigation(),

                // Circular Button
                const OnBoardingNextButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
