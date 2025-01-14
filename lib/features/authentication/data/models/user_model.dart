import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:mystore/core/utils/string_ids/string_id.dart';

import 'package:mystore/features/authentication/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@collection
class IsarUserModel extends UserEntity {
  String? id;
  Id get isarId => fastHash(id!);

  IsarUserModel({
    this.id,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.password,
    required super.username,
    required super.phoneNumber,
  });
}

@freezed
class UserModel extends UserEntity with _$UserModel {
  const factory UserModel({
    String? id,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String username,
    required String phoneNumber,
    String? photo,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
      password: user.password,
      username: user.username,
      phoneNumber: user.phoneNumber,
      photo: user.photo,
    );
  }
}

extension UserModelX on UserModel {
  IsarUserModel toIsarUserModel() {
    return IsarUserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      username: username,
      phoneNumber: phoneNumber,
    );
  }

  UserModel copyWithId(String id) {
    return UserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      username: username,
      phoneNumber: phoneNumber,
      photo: photo,
    );
  }
}
