abstract class OnboardingRepository {
  Future<void> setOnboardingCompleted(bool value);
  Future<bool> isOnboardingCompleted();
}