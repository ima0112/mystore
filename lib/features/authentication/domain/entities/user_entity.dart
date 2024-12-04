class UserEntity extends UserAuthCredentials {
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
    required super.email,
    required super.password,
    this.photo,
  });
}

class UserAuthCredentials {
  final String email;
  final String password;

  const UserAuthCredentials({
    required this.email,
    required this.password,
  });
}
