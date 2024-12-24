// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginViaPasswordLoading,
    required TResult Function(AuthResponseEntity loginEntity)
        loginViaPasswordSuccess,
    required TResult Function(String error) loginViaPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginViaPasswordLoading,
    TResult? Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult? Function(String error)? loginViaPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginViaPasswordLoading,
    TResult Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult Function(String error)? loginViaPasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginViaPasswordLoading<T> value)
        loginViaPasswordLoading,
    required TResult Function(LoginViaPasswordSuccess<T> value)
        loginViaPasswordSuccess,
    required TResult Function(LoginViaPasswordError<T> value)
        loginViaPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginViaPasswordLoading<T> value)?
        loginViaPasswordLoading,
    TResult? Function(LoginViaPasswordSuccess<T> value)?
        loginViaPasswordSuccess,
    TResult? Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginViaPasswordLoading<T> value)? loginViaPasswordLoading,
    TResult Function(LoginViaPasswordSuccess<T> value)? loginViaPasswordSuccess,
    TResult Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<T, $Res, $Val extends LoginState<T>>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginViaPasswordLoading,
    required TResult Function(AuthResponseEntity loginEntity)
        loginViaPasswordSuccess,
    required TResult Function(String error) loginViaPasswordError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginViaPasswordLoading,
    TResult? Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult? Function(String error)? loginViaPasswordError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginViaPasswordLoading,
    TResult Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult Function(String error)? loginViaPasswordError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginViaPasswordLoading<T> value)
        loginViaPasswordLoading,
    required TResult Function(LoginViaPasswordSuccess<T> value)
        loginViaPasswordSuccess,
    required TResult Function(LoginViaPasswordError<T> value)
        loginViaPasswordError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginViaPasswordLoading<T> value)?
        loginViaPasswordLoading,
    TResult? Function(LoginViaPasswordSuccess<T> value)?
        loginViaPasswordSuccess,
    TResult? Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginViaPasswordLoading<T> value)? loginViaPasswordLoading,
    TResult Function(LoginViaPasswordSuccess<T> value)? loginViaPasswordSuccess,
    TResult Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginViaPasswordLoadingImplCopyWith<T, $Res> {
  factory _$$LoginViaPasswordLoadingImplCopyWith(
          _$LoginViaPasswordLoadingImpl<T> value,
          $Res Function(_$LoginViaPasswordLoadingImpl<T>) then) =
      __$$LoginViaPasswordLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginViaPasswordLoadingImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginViaPasswordLoadingImpl<T>>
    implements _$$LoginViaPasswordLoadingImplCopyWith<T, $Res> {
  __$$LoginViaPasswordLoadingImplCopyWithImpl(
      _$LoginViaPasswordLoadingImpl<T> _value,
      $Res Function(_$LoginViaPasswordLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginViaPasswordLoadingImpl<T> implements LoginViaPasswordLoading<T> {
  const _$LoginViaPasswordLoadingImpl();

  @override
  String toString() {
    return 'LoginState<$T>.loginViaPasswordLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViaPasswordLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginViaPasswordLoading,
    required TResult Function(AuthResponseEntity loginEntity)
        loginViaPasswordSuccess,
    required TResult Function(String error) loginViaPasswordError,
  }) {
    return loginViaPasswordLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginViaPasswordLoading,
    TResult? Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult? Function(String error)? loginViaPasswordError,
  }) {
    return loginViaPasswordLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginViaPasswordLoading,
    TResult Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult Function(String error)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (loginViaPasswordLoading != null) {
      return loginViaPasswordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginViaPasswordLoading<T> value)
        loginViaPasswordLoading,
    required TResult Function(LoginViaPasswordSuccess<T> value)
        loginViaPasswordSuccess,
    required TResult Function(LoginViaPasswordError<T> value)
        loginViaPasswordError,
  }) {
    return loginViaPasswordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginViaPasswordLoading<T> value)?
        loginViaPasswordLoading,
    TResult? Function(LoginViaPasswordSuccess<T> value)?
        loginViaPasswordSuccess,
    TResult? Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
  }) {
    return loginViaPasswordLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginViaPasswordLoading<T> value)? loginViaPasswordLoading,
    TResult Function(LoginViaPasswordSuccess<T> value)? loginViaPasswordSuccess,
    TResult Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (loginViaPasswordLoading != null) {
      return loginViaPasswordLoading(this);
    }
    return orElse();
  }
}

abstract class LoginViaPasswordLoading<T> implements LoginState<T> {
  const factory LoginViaPasswordLoading() = _$LoginViaPasswordLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoginViaPasswordSuccessImplCopyWith<T, $Res> {
  factory _$$LoginViaPasswordSuccessImplCopyWith(
          _$LoginViaPasswordSuccessImpl<T> value,
          $Res Function(_$LoginViaPasswordSuccessImpl<T>) then) =
      __$$LoginViaPasswordSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AuthResponseEntity loginEntity});

  $AuthResponseEntityCopyWith<$Res> get loginEntity;
}

/// @nodoc
class __$$LoginViaPasswordSuccessImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginViaPasswordSuccessImpl<T>>
    implements _$$LoginViaPasswordSuccessImplCopyWith<T, $Res> {
  __$$LoginViaPasswordSuccessImplCopyWithImpl(
      _$LoginViaPasswordSuccessImpl<T> _value,
      $Res Function(_$LoginViaPasswordSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEntity = null,
  }) {
    return _then(_$LoginViaPasswordSuccessImpl<T>(
      null == loginEntity
          ? _value.loginEntity
          : loginEntity // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthResponseEntityCopyWith<$Res> get loginEntity {
    return $AuthResponseEntityCopyWith<$Res>(_value.loginEntity, (value) {
      return _then(_value.copyWith(loginEntity: value));
    });
  }
}

/// @nodoc

class _$LoginViaPasswordSuccessImpl<T> implements LoginViaPasswordSuccess<T> {
  const _$LoginViaPasswordSuccessImpl(this.loginEntity);

  @override
  final AuthResponseEntity loginEntity;

  @override
  String toString() {
    return 'LoginState<$T>.loginViaPasswordSuccess(loginEntity: $loginEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViaPasswordSuccessImpl<T> &&
            (identical(other.loginEntity, loginEntity) ||
                other.loginEntity == loginEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginEntity);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginViaPasswordSuccessImplCopyWith<T, _$LoginViaPasswordSuccessImpl<T>>
      get copyWith => __$$LoginViaPasswordSuccessImplCopyWithImpl<T,
          _$LoginViaPasswordSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginViaPasswordLoading,
    required TResult Function(AuthResponseEntity loginEntity)
        loginViaPasswordSuccess,
    required TResult Function(String error) loginViaPasswordError,
  }) {
    return loginViaPasswordSuccess(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginViaPasswordLoading,
    TResult? Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult? Function(String error)? loginViaPasswordError,
  }) {
    return loginViaPasswordSuccess?.call(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginViaPasswordLoading,
    TResult Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult Function(String error)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (loginViaPasswordSuccess != null) {
      return loginViaPasswordSuccess(loginEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginViaPasswordLoading<T> value)
        loginViaPasswordLoading,
    required TResult Function(LoginViaPasswordSuccess<T> value)
        loginViaPasswordSuccess,
    required TResult Function(LoginViaPasswordError<T> value)
        loginViaPasswordError,
  }) {
    return loginViaPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginViaPasswordLoading<T> value)?
        loginViaPasswordLoading,
    TResult? Function(LoginViaPasswordSuccess<T> value)?
        loginViaPasswordSuccess,
    TResult? Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
  }) {
    return loginViaPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginViaPasswordLoading<T> value)? loginViaPasswordLoading,
    TResult Function(LoginViaPasswordSuccess<T> value)? loginViaPasswordSuccess,
    TResult Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (loginViaPasswordSuccess != null) {
      return loginViaPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginViaPasswordSuccess<T> implements LoginState<T> {
  const factory LoginViaPasswordSuccess(final AuthResponseEntity loginEntity) =
      _$LoginViaPasswordSuccessImpl<T>;

  AuthResponseEntity get loginEntity;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginViaPasswordSuccessImplCopyWith<T, _$LoginViaPasswordSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginViaPasswordErrorImplCopyWith<T, $Res> {
  factory _$$LoginViaPasswordErrorImplCopyWith(
          _$LoginViaPasswordErrorImpl<T> value,
          $Res Function(_$LoginViaPasswordErrorImpl<T>) then) =
      __$$LoginViaPasswordErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginViaPasswordErrorImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginViaPasswordErrorImpl<T>>
    implements _$$LoginViaPasswordErrorImplCopyWith<T, $Res> {
  __$$LoginViaPasswordErrorImplCopyWithImpl(
      _$LoginViaPasswordErrorImpl<T> _value,
      $Res Function(_$LoginViaPasswordErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginViaPasswordErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginViaPasswordErrorImpl<T> implements LoginViaPasswordError<T> {
  const _$LoginViaPasswordErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState<$T>.loginViaPasswordError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViaPasswordErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginViaPasswordErrorImplCopyWith<T, _$LoginViaPasswordErrorImpl<T>>
      get copyWith => __$$LoginViaPasswordErrorImplCopyWithImpl<T,
          _$LoginViaPasswordErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginViaPasswordLoading,
    required TResult Function(AuthResponseEntity loginEntity)
        loginViaPasswordSuccess,
    required TResult Function(String error) loginViaPasswordError,
  }) {
    return loginViaPasswordError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginViaPasswordLoading,
    TResult? Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult? Function(String error)? loginViaPasswordError,
  }) {
    return loginViaPasswordError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginViaPasswordLoading,
    TResult Function(AuthResponseEntity loginEntity)? loginViaPasswordSuccess,
    TResult Function(String error)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (loginViaPasswordError != null) {
      return loginViaPasswordError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginViaPasswordLoading<T> value)
        loginViaPasswordLoading,
    required TResult Function(LoginViaPasswordSuccess<T> value)
        loginViaPasswordSuccess,
    required TResult Function(LoginViaPasswordError<T> value)
        loginViaPasswordError,
  }) {
    return loginViaPasswordError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginViaPasswordLoading<T> value)?
        loginViaPasswordLoading,
    TResult? Function(LoginViaPasswordSuccess<T> value)?
        loginViaPasswordSuccess,
    TResult? Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
  }) {
    return loginViaPasswordError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginViaPasswordLoading<T> value)? loginViaPasswordLoading,
    TResult Function(LoginViaPasswordSuccess<T> value)? loginViaPasswordSuccess,
    TResult Function(LoginViaPasswordError<T> value)? loginViaPasswordError,
    required TResult orElse(),
  }) {
    if (loginViaPasswordError != null) {
      return loginViaPasswordError(this);
    }
    return orElse();
  }
}

abstract class LoginViaPasswordError<T> implements LoginState<T> {
  const factory LoginViaPasswordError(final String error) =
      _$LoginViaPasswordErrorImpl<T>;

  String get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginViaPasswordErrorImplCopyWith<T, _$LoginViaPasswordErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}