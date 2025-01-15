import 'package:equatable/equatable.dart';
import 'package:mystore/core/error/failures.dart';

/// An abstract class representing a use case in the application.
/// 
/// This class defines a contract for use cases, which are the 
/// application-specific business rules. Each use case should 
/// implement this interface to ensure consistency and separation 
/// of concerns.
/// 
/// [Type] represents the return type of the use case.
/// [Params] represents the parameters required to execute the use case.
abstract class UseCase<Type, Params> {
  Future<(Failure?, Type?)> call(Params params);
}

/// A class representing a use case with no parameters.
/// 
/// This class extends [Equatable] to allow for value comparison.
/// It is typically used in scenarios where a use case does not require any input parameters.
class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
