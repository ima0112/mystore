import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mystore/utils/navigation/go_routes.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  final PageController pageController = PageController();

  OnboardingControllerCubit()
      : super(const OnboardingControllerState(currentPageIndex: 0));

  void updatePageIndicator(int index) {
    emit(state.copyWith(currentPageIndex: index));
  }

  void nextPage() {
    if (state.currentPageIndex == 2) {
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
