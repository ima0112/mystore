// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)
        formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)?
        formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)?
        formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res, SignUpFormEvent>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res, $Val extends SignUpFormEvent>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

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
    extends _$SignUpFormEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SignUpFormEvent.started()';
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
    required TResult Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)
        formSubmitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)?
        formSubmitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)?
        formSubmitted,
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
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpFormEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FormSubmittedImplCopyWith<$Res> {
  factory _$$FormSubmittedImplCopyWith(
          _$FormSubmittedImpl value, $Res Function(_$FormSubmittedImpl) then) =
      __$$FormSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      String phoneNumber,
      String username,
      bool privacyAccepted});
}

/// @nodoc
class __$$FormSubmittedImplCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$FormSubmittedImpl>
    implements _$$FormSubmittedImplCopyWith<$Res> {
  __$$FormSubmittedImplCopyWithImpl(
      _$FormSubmittedImpl _value, $Res Function(_$FormSubmittedImpl) _then)
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
    Object? privacyAccepted = null,
  }) {
    return _then(_$FormSubmittedImpl(
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
      privacyAccepted: null == privacyAccepted
          ? _value.privacyAccepted
          : privacyAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FormSubmittedImpl implements _FormSubmitted {
  const _$FormSubmittedImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.username,
      required this.privacyAccepted});

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
  final bool privacyAccepted;

  @override
  String toString() {
    return 'SignUpFormEvent.formSubmitted(firstName: $firstName, lastName: $lastName, email: $email, password: $password, phoneNumber: $phoneNumber, username: $username, privacyAccepted: $privacyAccepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSubmittedImpl &&
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
                other.username == username) &&
            (identical(other.privacyAccepted, privacyAccepted) ||
                other.privacyAccepted == privacyAccepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      password, phoneNumber, username, privacyAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSubmittedImplCopyWith<_$FormSubmittedImpl> get copyWith =>
      __$$FormSubmittedImplCopyWithImpl<_$FormSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)
        formSubmitted,
  }) {
    return formSubmitted(firstName, lastName, email, password, phoneNumber,
        username, privacyAccepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)?
        formSubmitted,
  }) {
    return formSubmitted?.call(firstName, lastName, email, password,
        phoneNumber, username, privacyAccepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String firstName,
            String lastName,
            String email,
            String password,
            String phoneNumber,
            String username,
            bool privacyAccepted)?
        formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(firstName, lastName, email, password, phoneNumber,
          username, privacyAccepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements SignUpFormEvent {
  const factory _FormSubmitted(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String password,
      required final String phoneNumber,
      required final String username,
      required final bool privacyAccepted}) = _$FormSubmittedImpl;

  String get firstName;
  String get lastName;
  String get email;
  String get password;
  String get phoneNumber;
  String get username;
  bool get privacyAccepted;
  @JsonKey(ignore: true)
  _$$FormSubmittedImplCopyWith<_$FormSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpFormState {
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isValidated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res, SignUpFormState>;
  @useResult
  $Res call(
      {FirstName firstName,
      LastName lastName,
      Username username,
      Email email,
      PhoneNumber phoneNumber,
      Password password,
      bool isValidated});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res, $Val extends SignUpFormState>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? isValidated = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isValidated: null == isValidated
          ? _value.isValidated
          : isValidated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpFormStateImplCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$$SignUpFormStateImplCopyWith(_$SignUpFormStateImpl value,
          $Res Function(_$SignUpFormStateImpl) then) =
      __$$SignUpFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FirstName firstName,
      LastName lastName,
      Username username,
      Email email,
      PhoneNumber phoneNumber,
      Password password,
      bool isValidated});
}

/// @nodoc
class __$$SignUpFormStateImplCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res, _$SignUpFormStateImpl>
    implements _$$SignUpFormStateImplCopyWith<$Res> {
  __$$SignUpFormStateImplCopyWithImpl(
      _$SignUpFormStateImpl _value, $Res Function(_$SignUpFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? isValidated = null,
  }) {
    return _then(_$SignUpFormStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isValidated: null == isValidated
          ? _value.isValidated
          : isValidated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignUpFormStateImpl implements _SignUpFormState {
  const _$SignUpFormStateImpl(
      {this.firstName = const FirstName.pure(),
      this.lastName = const LastName.pure(),
      this.username = const Username.pure(),
      this.email = const Email.pure(),
      this.phoneNumber = const PhoneNumber.pure(),
      this.password = const Password.pure(),
      this.isValidated = true});

  @override
  @JsonKey()
  final FirstName firstName;
  @override
  @JsonKey()
  final LastName lastName;
  @override
  @JsonKey()
  final Username username;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final bool isValidated;

  @override
  String toString() {
    return 'SignUpFormState(firstName: $firstName, lastName: $lastName, username: $username, email: $email, phoneNumber: $phoneNumber, password: $password, isValidated: $isValidated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isValidated, isValidated) ||
                other.isValidated == isValidated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username,
      email, phoneNumber, password, isValidated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      __$$SignUpFormStateImplCopyWithImpl<_$SignUpFormStateImpl>(
          this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {final FirstName firstName,
      final LastName lastName,
      final Username username,
      final Email email,
      final PhoneNumber phoneNumber,
      final Password password,
      final bool isValidated}) = _$SignUpFormStateImpl;

  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  Username get username;
  @override
  Email get email;
  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  bool get isValidated;
  @override
  @JsonKey(ignore: true)
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
