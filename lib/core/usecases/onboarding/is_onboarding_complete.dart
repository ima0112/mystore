import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/repositories/onboarding/onboarding_repository.dart';
import 'package:mystore/core/usecases/usecase.dart';

/// A use case that checks if the onboarding process is complete.
///
/// This class implements the [UseCase] interface with a return type of [bool]
/// and no parameters ([NoParams]).
///
/// The [IsOnboardingComplete] use case is responsible for determining whether
/// the user has completed the onboarding process.
@lazySingleton
class IsOnboardingComplete implements UseCase<bool, NoParams> {
  final OnboardingRepository repository;

  IsOnboardingComplete({required this.repository});

  @override
  Future<(Failure?, bool?)> call(NoParams params) async {
    try {
      final result = await repository.isOnboardingCompleted();
      return (null, result);
    } catch (e) {
      return (Failure('Error checking onboarding status'), null);
    }
  }
}
