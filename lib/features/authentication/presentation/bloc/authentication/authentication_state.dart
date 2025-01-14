part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.success({required String message}) =
      _Sucess;
  const factory AuthenticationState.error({required String message}) = _Error;
}
