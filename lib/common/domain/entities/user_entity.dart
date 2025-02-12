class UserEntity {
  final String email;
  final String firstName;
  final String lastName;
  final String username;
  final String phoneNumber;
  final String? photo;
  final String? id;

  const UserEntity({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
    required this.email,
    this.photo,
    this.id,
  });

  static const UserEntity empty = UserEntity(
    email: '',
    firstName: '',
    lastName: '',
    username: '',
    phoneNumber: '',
    photo: null, 
    id: null,
  );
}

extension UserEntityX on UserEntity {
  String get fullName => '$firstName $lastName';

  UserEntity copyWith({
    String? firstName,
    String? lastName,
    String? username,
    String? phoneNumber,
    String? email,
    String? photo,
    String? id,
  }) {
    return UserEntity(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      photo: photo ?? this.photo,
    );
  }
}

class UserAuthCredentials {
  final String email;
  final String password;

  const UserAuthCredentials({
    required this.email,
    required this.password,
  });
}
