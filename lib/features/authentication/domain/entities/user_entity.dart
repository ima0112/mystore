class UserEntity {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String username;
  final String phoneNumber;
  final String? photo;

  const UserEntity({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.username,
    required this.phoneNumber,
    this.photo,
  });
}
