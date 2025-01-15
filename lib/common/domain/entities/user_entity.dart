class UserEntity {
  final String email;
  final String firstName;
  final String lastName;
  final String username;
  final String phoneNumber;
  final String? photo;

  const UserEntity({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
    required this.email,
    this.photo,
  });

  static const UserEntity empty = UserEntity(
    email: '',
    firstName: '',
    lastName: '',
    username: '',
    phoneNumber: '',
    photo: null,
  );
}

extension UserEntityX on UserEntity {
  String get fullName => '$firstName $lastName';
}

class UserAuthCredentials {
  final String email;
  final String password;

  const UserAuthCredentials({
    required this.email,
    required this.password,
  });
}
