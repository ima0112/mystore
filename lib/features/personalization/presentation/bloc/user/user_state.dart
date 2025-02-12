part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(UserEntity.empty) UserEntity user,
    @Default(Status.initial) Status? status,
  }) = _UserState;
}
