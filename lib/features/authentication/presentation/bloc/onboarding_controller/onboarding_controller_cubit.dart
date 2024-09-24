import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/routing/go_routes.dart';

part 'onboarding_controller_state.dart';

@injectable
class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  final OnboardingService _onboardingService;
  final PageController pageController = PageController();

  OnboardingControllerCubit(this._onboardingService)
      : super(const OnboardingControllerState(currentPageIndex: 0));

  void updatePageIndicator(int index) {
    emit(state.copyWith(currentPageIndex: index));
  }

  void nextPage() async {
    if (state.currentPageIndex == 2) {
      await _onboardingService.completeOnboarding();
      AppRoute.routes.goNamed(MyRoutes.login.name);
    } else {
      int page = state.currentPageIndex + 1;
      pageController.jumpToPage(page);
      emit(state.copyWith(currentPageIndex: page));
    }
  }

  void skipPage() {
    pageController.jumpToPage(2);
    emit(state.copyWith(currentPageIndex: 2));
  }

  void dotNavigationClick(int index) {
    pageController.jumpToPage(index);
    emit(state.copyWith(currentPageIndex: index));
  }
}
