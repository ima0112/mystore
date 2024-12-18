import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/common/domain/repositories/onboarding_repository.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';

/// A use case that checks if the onboarding process is complete.
///
/// This class implements the [UseCase] interface with a return type of [bool]
/// and no parameters ([NoParams]).
///
/// The [OnboardingUseCase] use case is responsible for determining whether
/// the user has completed the onboarding process.
@lazySingleton
class OnboardingUseCase implements UseCase<bool, NoParams> {
  final OnboardingRepository repository;

  OnboardingUseCase({required this.repository});

  @override
  Future<(Failure?, bool?)> call(NoParams params) async {
    try {
      final result = await repository.isOnboardingCompleted();
      return (null, result);
    } catch (e) {
      return (Failure('Error checking onboarding status'), null);
    }
  }

  Future<(Failure?, void)> setOnboardingComplete(NoParams params) async {
    try {
      await repository.setOnboardingCompleted(true);
      return (null, null);
    } catch (e) {
      return (Failure('Error setting onboarding status'), null);
    }
  }
}
