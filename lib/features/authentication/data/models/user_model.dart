import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:mystore/features/authentication/domain/entities/user_entity.dart';

part 'user_model.g.dart';

@JsonSerializable()
@Collection()
class UserModel extends UserEntity {
  final Id id = Isar.autoIncrement;

  const UserModel({
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.password,
    required super.username,
    required super.phoneNumber,
    super.photo,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

extension UserModelX on UserModel {
  UserEntity toEntity() => UserEntity(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        username: username,
        phoneNumber: phoneNumber,
        photo: photo,
      );

  static UserModel fromEntity(UserEntity entity) => UserModel(
        firstName: entity.firstName,
        lastName: entity.lastName,
        email: entity.email,
        password: entity.password,
        username: entity.username,
        phoneNumber: entity.phoneNumber,
        photo: entity.photo,
      );
}
