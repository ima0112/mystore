import 'package:formz/formz.dart';

enum ReportProblemFormError {
  /// Generic invalid error.
  invalid,

  /// Value is required.
  empty,

  /// Value does not meet the minimum length requirement.
  username,

  /// Value does not meet the minimum length requirement.
  password,

  passwordLength,

  /// Value is not in email format.
  email,

  /// Value is not in a phone number format
  phone,
}

class FirstName extends FormzInput<String, ReportProblemFormError> {
  const FirstName.pure() : super.pure('');
  const FirstName.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isEmpty) {
      return ReportProblemFormError.empty;
    } else if (!RegExp(r'^[A-Za-z]+$').hasMatch(value)) {
      return ReportProblemFormError.invalid;
    }

    return null;
  }
}

class LastName extends FormzInput<String, ReportProblemFormError> {
  const LastName.pure() : super.pure('');
  const LastName.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isEmpty) {
      return ReportProblemFormError.empty;
    } else if (!RegExp(r'^[A-Za-z]+$').hasMatch(value)) {
      return ReportProblemFormError.invalid;
    }
    return null;
  }
}

class Username extends FormzInput<String, ReportProblemFormError> {
  static const int minLength = 4;

  const Username.pure() : super.pure('');
  const Username.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isEmpty) {
      return ReportProblemFormError.empty;
    } else if (value.length < minLength) {
      return ReportProblemFormError.username;
    } else if (!RegExp(r'^[A-Za-z]+$').hasMatch(value)) {
      return ReportProblemFormError.invalid;
    }
    return null;
  }
}

class Email extends FormzInput<String, ReportProblemFormError> {
  const Email.pure() : super.pure('');
  const Email.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isEmpty) {
      return ReportProblemFormError.empty;
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value)) {
      return ReportProblemFormError.invalid;
    }
    return null;
  }
}

class PhoneNumber extends FormzInput<String, ReportProblemFormError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isEmpty) {
      return ReportProblemFormError.empty;
    } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      // International phone number format
      return ReportProblemFormError.phone;
    }
    return null;
  }
}

class Password extends FormzInput<String, ReportProblemFormError> {
  static const int minLength = 6;

  const Password.pure() : super.pure('');
  const Password.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isEmpty) {
      return ReportProblemFormError.empty;
    } else if (value.length < minLength) {
      return ReportProblemFormError.passwordLength;
    } else if (!RegExp(
            r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$')
        .hasMatch(value)) {
      return ReportProblemFormError.password;
    }
    return null;
  }
}

class Photo extends FormzInput<String, ReportProblemFormError> {
  const Photo.pure() : super.pure('');
  const Photo.dirty(super.value) : super.dirty();

  @override
  ReportProblemFormError? validator(String value) {
    if (value.isNotEmpty &&
        !RegExp(r'^(https?:\/\/.*\.(?:png|jpg|jpeg))$').hasMatch(value)) {
      return ReportProblemFormError.invalid;
    }
    return null;
  }
}

extension GetErrorText on ReportProblemFormError {
  String get message {
    switch (this) {
      case ReportProblemFormError.empty:
        return 'Field cannot be empty';
      case ReportProblemFormError.invalid:
        return 'Invalid format';
      case ReportProblemFormError.email:
        return 'Invalid email format';
      case ReportProblemFormError.username:
        return 'Must be at least 4 characters long';
      case ReportProblemFormError.password:
        return 'Must contain at least one letter and one number';
      case ReportProblemFormError.passwordLength:
        return 'Must be at least 6 characters long';
      case ReportProblemFormError.phone:
        return 'Invalid phone number format';
      default:
        return '';
    }
  }
}
