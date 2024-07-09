part of 'onboarding_controller_cubit.dart';

@immutable
class OnboardingControllerState extends Equatable {
  final int currentPageIndex;

  const OnboardingControllerState({required this.currentPageIndex});

  OnboardingControllerState copyWith({required int currentPageIndex}) {
    return OnboardingControllerState(currentPageIndex: currentPageIndex);
  }

  @override
  List<Object?> get props => [currentPageIndex];
}
