import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class OnboardingService {
  final SharedPreferences _preferences;
  static const _onboardingCompletedKey = 'onboardingCompleted';

  OnboardingService(this._preferences);

  Future<void> completeOnboarding() async {
    await _preferences.setBool(_onboardingCompletedKey, true);
  }

  bool get isOnboardingCompleted {
    return _preferences.getBool(_onboardingCompletedKey) ?? false;
  }
}
