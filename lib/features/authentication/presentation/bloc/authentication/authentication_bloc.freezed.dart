// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      String phoneNumber,
      String username});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? username = null,
  }) {
    return _then(_$SignUpImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.username});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthenticationEvent.signup(firstName: $firstName, lastName: $lastName, email: $email, password: $password, phoneNumber: $phoneNumber, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, email, password, phoneNumber, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
  }) {
    return signup(firstName, lastName, email, password, phoneNumber, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
  }) {
    return signup?.call(
        firstName, lastName, email, password, phoneNumber, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(
          firstName, lastName, email, password, phoneNumber, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthenticationEvent {
  const factory _SignUp(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String password,
      required final String phoneNumber,
      required final String username}) = _$SignUpImpl;

  String get firstName;
  String get lastName;
  String get email;
  String get password;
  String get phoneNumber;
  String get username;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$VerifyEmailImplCopyWith<$Res> {
  factory _$$VerifyEmailImplCopyWith(
          _$VerifyEmailImpl value, $Res Function(_$VerifyEmailImpl) then) =
      __$$VerifyEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$VerifyEmailImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$VerifyEmailImpl>
    implements _$$VerifyEmailImplCopyWith<$Res> {
  __$$VerifyEmailImplCopyWithImpl(
      _$VerifyEmailImpl _value, $Res Function(_$VerifyEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$VerifyEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyEmailImpl implements _VerifyEmail {
  const _$VerifyEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailImplCopyWith<_$VerifyEmailImpl> get copyWith =>
      __$$VerifyEmailImplCopyWithImpl<_$VerifyEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
  }) {
    return verifyEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
  }) {
    return verifyEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail implements AuthenticationEvent {
  const factory _VerifyEmail({required final String email}) = _$VerifyEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$VerifyEmailImplCopyWith<_$VerifyEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckEmailVerificationImplCopyWith<$Res> {
  factory _$$CheckEmailVerificationImplCopyWith(
          _$CheckEmailVerificationImpl value,
          $Res Function(_$CheckEmailVerificationImpl) then) =
      __$$CheckEmailVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckEmailVerificationImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$CheckEmailVerificationImpl>
    implements _$$CheckEmailVerificationImplCopyWith<$Res> {
  __$$CheckEmailVerificationImplCopyWithImpl(
      _$CheckEmailVerificationImpl _value,
      $Res Function(_$CheckEmailVerificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckEmailVerificationImpl implements _CheckEmailVerification {
  const _$CheckEmailVerificationImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.checkEmailVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckEmailVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
  }) {
    return checkEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
  }) {
    return checkEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (checkEmailVerification != null) {
      return checkEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
  }) {
    return checkEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
  }) {
    return checkEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    required TResult orElse(),
  }) {
    if (checkEmailVerification != null) {
      return checkEmailVerification(this);
    }
    return orElse();
  }
}

abstract class _CheckEmailVerification implements AuthenticationEvent {
  const factory _CheckEmailVerification() = _$CheckEmailVerificationImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthenticationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SucessImplCopyWith<$Res> {
  factory _$$SucessImplCopyWith(
          _$SucessImpl value, $Res Function(_$SucessImpl) then) =
      __$$SucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String email});
}

/// @nodoc
class __$$SucessImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SucessImpl>
    implements _$$SucessImplCopyWith<$Res> {
  __$$SucessImplCopyWithImpl(
      _$SucessImpl _value, $Res Function(_$SucessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
  }) {
    return _then(_$SucessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SucessImpl implements _Sucess {
  const _$SucessImpl({required this.message, required this.email});

  @override
  final String message;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationState.success(message: $message, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SucessImplCopyWith<_$SucessImpl> get copyWith =>
      __$$SucessImplCopyWithImpl<_$SucessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return success(message, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return success?.call(message, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Sucess implements AuthenticationState {
  const factory _Sucess(
      {required final String message,
      required final String email}) = _$SucessImpl;

  String get message;
  String get email;
  @JsonKey(ignore: true)
  _$$SucessImplCopyWith<_$SucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailVerifiedImplCopyWith<$Res> {
  factory _$$EmailVerifiedImplCopyWith(
          _$EmailVerifiedImpl value, $Res Function(_$EmailVerifiedImpl) then) =
      __$$EmailVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerifiedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$EmailVerifiedImpl>
    implements _$$EmailVerifiedImplCopyWith<$Res> {
  __$$EmailVerifiedImplCopyWithImpl(
      _$EmailVerifiedImpl _value, $Res Function(_$EmailVerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerifiedImpl implements _EmailVerified {
  const _$EmailVerifiedImpl();

  @override
  String toString() {
    return 'AuthenticationState.emailVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return emailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return emailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (emailVerified != null) {
      return emailVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return emailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return emailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (emailVerified != null) {
      return emailVerified(this);
    }
    return orElse();
  }
}

abstract class _EmailVerified implements AuthenticationState {
  const factory _EmailVerified() = _$EmailVerifiedImpl;
}

/// @nodoc
abstract class _$$EmailVerificationSentImplCopyWith<$Res> {
  factory _$$EmailVerificationSentImplCopyWith(
          _$EmailVerificationSentImpl value,
          $Res Function(_$EmailVerificationSentImpl) then) =
      __$$EmailVerificationSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerificationSentImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$EmailVerificationSentImpl>
    implements _$$EmailVerificationSentImplCopyWith<$Res> {
  __$$EmailVerificationSentImplCopyWithImpl(_$EmailVerificationSentImpl _value,
      $Res Function(_$EmailVerificationSentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerificationSentImpl implements _EmailVerificationSent {
  const _$EmailVerificationSentImpl();

  @override
  String toString() {
    return 'AuthenticationState.emailVerificationSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return emailVerificationSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return emailVerificationSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (emailVerificationSent != null) {
      return emailVerificationSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return emailVerificationSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return emailVerificationSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (emailVerificationSent != null) {
      return emailVerificationSent(this);
    }
    return orElse();
  }
}

abstract class _EmailVerificationSent implements AuthenticationState {
  const factory _EmailVerificationSent() = _$EmailVerificationSentImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthenticationState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthenticationState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthenticationState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendCooldownImplCopyWith<$Res> {
  factory _$$ResendCooldownImplCopyWith(_$ResendCooldownImpl value,
          $Res Function(_$ResendCooldownImpl) then) =
      __$$ResendCooldownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int secondsRemaining});
}

/// @nodoc
class __$$ResendCooldownImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ResendCooldownImpl>
    implements _$$ResendCooldownImplCopyWith<$Res> {
  __$$ResendCooldownImplCopyWithImpl(
      _$ResendCooldownImpl _value, $Res Function(_$ResendCooldownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secondsRemaining = null,
  }) {
    return _then(_$ResendCooldownImpl(
      null == secondsRemaining
          ? _value.secondsRemaining
          : secondsRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResendCooldownImpl implements _ResendCooldown {
  const _$ResendCooldownImpl(this.secondsRemaining);

  @override
  final int secondsRemaining;

  @override
  String toString() {
    return 'AuthenticationState.resendCooldown(secondsRemaining: $secondsRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendCooldownImpl &&
            (identical(other.secondsRemaining, secondsRemaining) ||
                other.secondsRemaining == secondsRemaining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secondsRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendCooldownImplCopyWith<_$ResendCooldownImpl> get copyWith =>
      __$$ResendCooldownImplCopyWithImpl<_$ResendCooldownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String email) success,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
  }) {
    return resendCooldown(secondsRemaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String email)? success,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
  }) {
    return resendCooldown?.call(secondsRemaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String email)? success,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    required TResult orElse(),
  }) {
    if (resendCooldown != null) {
      return resendCooldown(secondsRemaining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sucess value) success,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
  }) {
    return resendCooldown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
  }) {
    return resendCooldown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sucess value)? success,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    required TResult orElse(),
  }) {
    if (resendCooldown != null) {
      return resendCooldown(this);
    }
    return orElse();
  }
}

abstract class _ResendCooldown implements AuthenticationState {
  const factory _ResendCooldown(final int secondsRemaining) =
      _$ResendCooldownImpl;

  int get secondsRemaining;
  @JsonKey(ignore: true)
  _$$ResendCooldownImplCopyWith<_$ResendCooldownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
