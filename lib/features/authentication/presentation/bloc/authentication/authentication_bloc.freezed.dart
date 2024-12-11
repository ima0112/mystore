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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
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
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
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
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
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
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
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
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
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
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
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
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
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
abstract class _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordImplCopyWith(
          _$SignInWithEmailAndPasswordImpl value,
          $Res Function(_$SignInWithEmailAndPasswordImpl) then) =
      __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, bool rememberMe});
}

/// @nodoc
class __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$SignInWithEmailAndPasswordImpl>
    implements _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordImplCopyWithImpl(
      _$SignInWithEmailAndPasswordImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
  }) {
    return _then(_$SignInWithEmailAndPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPasswordImpl implements _SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPasswordImpl(
      {required this.email, required this.password, required this.rememberMe});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthenticationEvent.signinWithEmailAndPassword(email: $email, password: $password, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => __$$SignInWithEmailAndPasswordImplCopyWithImpl<
          _$SignInWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
  }) {
    return signinWithEmailAndPassword(email, password, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
  }) {
    return signinWithEmailAndPassword?.call(email, password, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPassword != null) {
      return signinWithEmailAndPassword(email, password, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return signinWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return signinWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPassword != null) {
      return signinWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements AuthenticationEvent {
  const factory _SignInWithEmailAndPassword(
      {required final String email,
      required final String password,
      required final bool rememberMe}) = _$SignInWithEmailAndPasswordImpl;

  String get email;
  String get password;
  bool get rememberMe;
  @JsonKey(ignore: true)
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogleImpl implements _SignInWithGoogle {
  const _$SignInWithGoogleImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogleImpl);
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements AuthenticationEvent {
  const factory _SignInWithGoogle() = _$SignInWithGoogleImpl;
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
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
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
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
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
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
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
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
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
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
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
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
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
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
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
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
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
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
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return checkEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return checkEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
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
abstract class _$$RestoreImplCopyWith<$Res> {
  factory _$$RestoreImplCopyWith(
          _$RestoreImpl value, $Res Function(_$RestoreImpl) then) =
      __$$RestoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$RestoreImpl>
    implements _$$RestoreImplCopyWith<$Res> {
  __$$RestoreImplCopyWithImpl(
      _$RestoreImpl _value, $Res Function(_$RestoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestoreImpl implements _Restore {
  const _$RestoreImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.restore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreImpl);
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
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
  }) {
    return restore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
  }) {
    return restore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _Restore implements AuthenticationEvent {
  const factory _Restore() = _$RestoreImpl;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)
        signup,
    required TResult Function(String email, String password, bool rememberMe)
        signinWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() logout,
    required TResult Function(String email) verifyEmail,
    required TResult Function() checkEmailVerification,
    required TResult Function() restore,
    required TResult Function(String email) resetPassword,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult? Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? logout,
    TResult? Function(String email)? verifyEmail,
    TResult? Function()? checkEmailVerification,
    TResult? Function()? restore,
    TResult? Function(String email)? resetPassword,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstName, String lastName, String email,
            String password, String phoneNumber, String username)?
        signup,
    TResult Function(String email, String password, bool rememberMe)?
        signinWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? logout,
    TResult Function(String email)? verifyEmail,
    TResult Function()? checkEmailVerification,
    TResult Function()? restore,
    TResult Function(String email)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signup,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_Logout value) logout,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_CheckEmailVerification value)
        checkEmailVerification,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signup,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signup,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_Logout value)? logout,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_CheckEmailVerification value)? checkEmailVerification,
    TResult Function(_Restore value)? restore,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthenticationEvent {
  const factory _ResetPassword({required final String email}) =
      _$ResetPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingImpl implements _Processing {
  const _$ProcessingImpl();

  @override
  String toString() {
    return 'AuthenticationState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements AuthenticationState {
  const factory _Processing() = _$ProcessingImpl;
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return success(message, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return success?.call(message, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return resendCooldown(secondsRemaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return resendCooldown?.call(secondsRemaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return resendCooldown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return resendCooldown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return emailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return emailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return emailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return emailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return emailVerificationSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return emailVerificationSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return emailVerificationSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return emailVerificationSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'AuthenticationState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthenticationState {
  const factory _LoggedIn() = _$LoggedInImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'AuthenticationState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthenticationState {
  const factory _LoggedIn() = _$LoggedInImpl;
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
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
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
abstract class _$$LoggingOutImplCopyWith<$Res> {
  factory _$$LoggingOutImplCopyWith(
          _$LoggingOutImpl value, $Res Function(_$LoggingOutImpl) then) =
      __$$LoggingOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingOutImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoggingOutImpl>
    implements _$$LoggingOutImplCopyWith<$Res> {
  __$$LoggingOutImplCopyWithImpl(
      _$LoggingOutImpl _value, $Res Function(_$LoggingOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingOutImpl implements _LoggingOut {
  const _$LoggingOutImpl();

  @override
  String toString() {
    return 'AuthenticationState.loggingOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return loggingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return loggingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return loggingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return loggingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(this);
    }
    return orElse();
  }
}

abstract class _LoggingOut implements AuthenticationState {
  const factory _LoggingOut() = _$LoggingOutImpl;
}

/// @nodoc
abstract class _$$PasswordResetSentImplCopyWith<$Res> {
  factory _$$PasswordResetSentImplCopyWith(_$PasswordResetSentImpl value,
          $Res Function(_$PasswordResetSentImpl) then) =
      __$$PasswordResetSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String email});
}

/// @nodoc
class __$$PasswordResetSentImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$PasswordResetSentImpl>
    implements _$$PasswordResetSentImplCopyWith<$Res> {
  __$$PasswordResetSentImplCopyWithImpl(_$PasswordResetSentImpl _value,
      $Res Function(_$PasswordResetSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
  }) {
    return _then(_$PasswordResetSentImpl(
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

class _$PasswordResetSentImpl implements _PasswordResetSent {
  const _$PasswordResetSentImpl({required this.message, required this.email});

  @override
  final String message;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationState.passwordResetSent(message: $message, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetSentImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetSentImplCopyWith<_$PasswordResetSentImpl> get copyWith =>
      __$$PasswordResetSentImplCopyWithImpl<_$PasswordResetSentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() processing,
    required TResult Function(String message) error,
    required TResult Function(String message, String email) success,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() emailVerified,
    required TResult Function() emailVerificationSent,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function(int secondsRemaining) resendCooldown,
    required TResult Function() loggedIn,
    required TResult Function() passwordResetSent,
    required TResult Function() loggingOut,
    required TResult Function(String message, String email) passwordResetSent,
  }) {
    return passwordResetSent(message, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? processing,
    TResult? Function(String message)? error,
    TResult? Function(String message, String email)? success,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? emailVerified,
    TResult? Function()? emailVerificationSent,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function(int secondsRemaining)? resendCooldown,
    TResult? Function()? loggedIn,
    TResult? Function()? passwordResetSent,
    TResult? Function()? loggingOut,
    TResult? Function(String message, String email)? passwordResetSent,
  }) {
    return passwordResetSent?.call(message, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? processing,
    TResult Function(String message)? error,
    TResult Function(String message, String email)? success,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? emailVerified,
    TResult Function()? emailVerificationSent,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function(int secondsRemaining)? resendCooldown,
    TResult Function()? loggedIn,
    TResult Function()? passwordResetSent,
    TResult Function()? loggingOut,
    TResult Function(String message, String email)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (passwordResetSent != null) {
      return passwordResetSent(message, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Error value) error,
    required TResult Function(_Sucess value) success,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_EmailVerified value) emailVerified,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_ResendCooldown value) resendCooldown,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
  }) {
    return passwordResetSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sucess value)? success,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_EmailVerified value)? emailVerified,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResendCooldown value)? resendCooldown,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
  }) {
    return passwordResetSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Processing value)? processing,
    TResult Function(_Error value)? error,
    TResult Function(_Sucess value)? success,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_EmailVerified value)? emailVerified,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_ResendCooldown value)? resendCooldown,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    required TResult orElse(),
  }) {
    if (passwordResetSent != null) {
      return passwordResetSent(this);
    }
    return orElse();
  }
}

abstract class _PasswordResetSent implements AuthenticationState {
  const factory _PasswordResetSent(
      {required final String message,
      required final String email}) = _$PasswordResetSentImpl;

  String get message;
  String get email;
  @JsonKey(ignore: true)
  _$$PasswordResetSentImplCopyWith<_$PasswordResetSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
