import 'package:injectable/injectable.dart';
import 'package:mystore/core/local_storage/shared_preferences/shared_preferences_data_source.dart';
import 'package:mystore/core/repositories/onboarding/onboarding_repository.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  static const onboardingCompleted = 'onboarding_completed';

  final SharedPreferencesDataSource _dataSource;
  OnboardingRepositoryImpl(this._dataSource);

  @override
  Future<void> setOnboardingCompleted(bool value) async {
    await _dataSource.saveBool(onboardingCompleted, value);
  }

  @override
  Future<bool> isOnboardingCompleted() async {
    return await _dataSource.getBool(onboardingCompleted);
  }
}
