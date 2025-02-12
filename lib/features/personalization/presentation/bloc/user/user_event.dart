part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser() = _GetUser;
  const factory UserEvent.updateUser({
    required String firstName,
    required String lastName,
  }) = _UpdateUser;
}
