import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/repositories/onboarding/onboarding_repository.dart';
import 'package:mystore/core/usecases/usecase.dart';

/// A use case that marks the onboarding process as complete.
/// 
/// This class implements the [UseCase] interface with a return type of `void`
/// and accepts [NoParams] as input parameters. It is used to indicate that
/// the user has completed the onboarding process.
@lazySingleton
class SetOnboardingComplete implements UseCase<void, NoParams> {
  final OnboardingRepository repository;

  SetOnboardingComplete({required this.repository});

  @override
  Future<(Failure?, void)> call(NoParams params) async {
    try {
      await repository.setOnboardingCompleted(true);
      return (null, null);
    } catch (e) {
      return (Failure('Error setting onboarding status'), null);
    }
  }
}
