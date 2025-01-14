/// A base class representing a failure or error in the application.
///
/// This class can be extended to create specific types of failures
/// that can be used to handle different error scenarios in a
/// consistent manner throughout the application.
class Failure {
  final String message;
  final int code;

  Failure(this.message, {this.code = 0});

  @override
  String toString() => 'Failure(message: $message, code: $code)';
}

/// A class representing a network failure.
///
/// This class extends the [Failure] class and is used to indicate
/// that a failure has occurred due to network-related issues.
class NetworkFailure extends Failure {
  NetworkFailure(super.message, {super.code});
}

/// Represents a failure that occurs due to server-related issues.
///
/// This class extends from the base `Failure` class and is used to
/// handle errors that are specifically related to server failures.
class ServerFailure extends Failure {
  ServerFailure(super.message, {super.code});
}

/// Represents a failure that occurs when there is an issue with caching.
///
/// This class extends from the [Failure] class and is used to handle
/// errors specifically related to caching operations.
class CacheFailure extends Failure {
  CacheFailure(super.message, {super.code});
}

/// A specific type of [Failure] that occurs during authentication processes.
///
/// This class can be used to represent various authentication-related errors,
/// such as invalid credentials, user not found, or other issues that prevent
/// successful authentication.
///
/// Example usage:
/// ```dart
/// try {
///   // Attempt authentication
/// } catch (e) {
///   throw AuthenticationFailure();
/// }
/// ```
class AuthenticationFailure extends Failure {
  AuthenticationFailure(super.message, {super.code});
}

/// A specific type of [Failure] that represents an invalid input error.
///
/// This failure is used to indicate that the input provided by the user
/// or another source is not valid according to the application's rules
/// or expectations.
class InvalidInputFailure extends Failure {
  InvalidInputFailure(super.message, {super.code});
}

/// A specific type of [Failure] that indicates a resource was not found.
///
/// This failure can be used to represent scenarios where an expected
/// resource, such as a file, database entry, or network resource,
/// could not be located.
class NotFoundFailure extends Failure {
  NotFoundFailure(super.message, {super.code});
}

/// Represents a failure that occurs unexpectedly.
///
/// This class extends from the base `Failure` class and is used to handle
/// errors that are not anticipated or do not fall into specific categories
/// of failures.
class UnexpectedFailure extends Failure {
  UnexpectedFailure(super.message, {super.code});
}

/// A specific type of [Failure] that represents an invalid form submission.
///
/// This failure is typically used to indicate that the data provided in a form
/// does not meet the required validation criteria.
///
/// Example usage:
///
/// ```dart
/// if (!formIsValid) {
///   return InvalidFormFailure();
/// }
/// ```
///
/// Extends:
/// - [Failure]: The base class for all failure types in the application.
class InvalidFormFailure extends Failure {
  InvalidFormFailure(super.message, {super.code});
}
