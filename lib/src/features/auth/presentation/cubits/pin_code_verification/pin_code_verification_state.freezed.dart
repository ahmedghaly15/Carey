// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pin_code_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PinCodeVerificationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verifyLoading,
    required TResult Function() verifySuccess,
    required TResult Function(String error) verifyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verifyLoading,
    TResult? Function()? verifySuccess,
    TResult? Function(String error)? verifyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verifyLoading,
    TResult Function()? verifySuccess,
    TResult Function(String error)? verifyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerifyLoading<T> value) verifyLoading,
    required TResult Function(VerifySuccess<T> value) verifySuccess,
    required TResult Function(VerifyError<T> value) verifyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerifyLoading<T> value)? verifyLoading,
    TResult? Function(VerifySuccess<T> value)? verifySuccess,
    TResult? Function(VerifyError<T> value)? verifyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerifyLoading<T> value)? verifyLoading,
    TResult Function(VerifySuccess<T> value)? verifySuccess,
    TResult Function(VerifyError<T> value)? verifyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeVerificationStateCopyWith<T, $Res> {
  factory $PinCodeVerificationStateCopyWith(PinCodeVerificationState<T> value,
          $Res Function(PinCodeVerificationState<T>) then) =
      _$PinCodeVerificationStateCopyWithImpl<T, $Res,
          PinCodeVerificationState<T>>;
}

/// @nodoc
class _$PinCodeVerificationStateCopyWithImpl<T, $Res,
        $Val extends PinCodeVerificationState<T>>
    implements $PinCodeVerificationStateCopyWith<T, $Res> {
  _$PinCodeVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PinCodeVerificationState
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
    extends _$PinCodeVerificationStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PinCodeVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PinCodeVerificationState<$T>.initial()';
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
    required TResult Function() verifyLoading,
    required TResult Function() verifySuccess,
    required TResult Function(String error) verifyError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verifyLoading,
    TResult? Function()? verifySuccess,
    TResult? Function(String error)? verifyError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verifyLoading,
    TResult Function()? verifySuccess,
    TResult Function(String error)? verifyError,
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
    required TResult Function(VerifyLoading<T> value) verifyLoading,
    required TResult Function(VerifySuccess<T> value) verifySuccess,
    required TResult Function(VerifyError<T> value) verifyError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerifyLoading<T> value)? verifyLoading,
    TResult? Function(VerifySuccess<T> value)? verifySuccess,
    TResult? Function(VerifyError<T> value)? verifyError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerifyLoading<T> value)? verifyLoading,
    TResult Function(VerifySuccess<T> value)? verifySuccess,
    TResult Function(VerifyError<T> value)? verifyError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements PinCodeVerificationState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$VerifyLoadingImplCopyWith<T, $Res> {
  factory _$$VerifyLoadingImplCopyWith(_$VerifyLoadingImpl<T> value,
          $Res Function(_$VerifyLoadingImpl<T>) then) =
      __$$VerifyLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$VerifyLoadingImplCopyWithImpl<T, $Res>
    extends _$PinCodeVerificationStateCopyWithImpl<T, $Res,
        _$VerifyLoadingImpl<T>>
    implements _$$VerifyLoadingImplCopyWith<T, $Res> {
  __$$VerifyLoadingImplCopyWithImpl(_$VerifyLoadingImpl<T> _value,
      $Res Function(_$VerifyLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PinCodeVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyLoadingImpl<T> implements VerifyLoading<T> {
  const _$VerifyLoadingImpl();

  @override
  String toString() {
    return 'PinCodeVerificationState<$T>.verifyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verifyLoading,
    required TResult Function() verifySuccess,
    required TResult Function(String error) verifyError,
  }) {
    return verifyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verifyLoading,
    TResult? Function()? verifySuccess,
    TResult? Function(String error)? verifyError,
  }) {
    return verifyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verifyLoading,
    TResult Function()? verifySuccess,
    TResult Function(String error)? verifyError,
    required TResult orElse(),
  }) {
    if (verifyLoading != null) {
      return verifyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerifyLoading<T> value) verifyLoading,
    required TResult Function(VerifySuccess<T> value) verifySuccess,
    required TResult Function(VerifyError<T> value) verifyError,
  }) {
    return verifyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerifyLoading<T> value)? verifyLoading,
    TResult? Function(VerifySuccess<T> value)? verifySuccess,
    TResult? Function(VerifyError<T> value)? verifyError,
  }) {
    return verifyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerifyLoading<T> value)? verifyLoading,
    TResult Function(VerifySuccess<T> value)? verifySuccess,
    TResult Function(VerifyError<T> value)? verifyError,
    required TResult orElse(),
  }) {
    if (verifyLoading != null) {
      return verifyLoading(this);
    }
    return orElse();
  }
}

abstract class VerifyLoading<T> implements PinCodeVerificationState<T> {
  const factory VerifyLoading() = _$VerifyLoadingImpl<T>;
}

/// @nodoc
abstract class _$$VerifySuccessImplCopyWith<T, $Res> {
  factory _$$VerifySuccessImplCopyWith(_$VerifySuccessImpl<T> value,
          $Res Function(_$VerifySuccessImpl<T>) then) =
      __$$VerifySuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$VerifySuccessImplCopyWithImpl<T, $Res>
    extends _$PinCodeVerificationStateCopyWithImpl<T, $Res,
        _$VerifySuccessImpl<T>>
    implements _$$VerifySuccessImplCopyWith<T, $Res> {
  __$$VerifySuccessImplCopyWithImpl(_$VerifySuccessImpl<T> _value,
      $Res Function(_$VerifySuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PinCodeVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifySuccessImpl<T> implements VerifySuccess<T> {
  const _$VerifySuccessImpl();

  @override
  String toString() {
    return 'PinCodeVerificationState<$T>.verifySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifySuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verifyLoading,
    required TResult Function() verifySuccess,
    required TResult Function(String error) verifyError,
  }) {
    return verifySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verifyLoading,
    TResult? Function()? verifySuccess,
    TResult? Function(String error)? verifyError,
  }) {
    return verifySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verifyLoading,
    TResult Function()? verifySuccess,
    TResult Function(String error)? verifyError,
    required TResult orElse(),
  }) {
    if (verifySuccess != null) {
      return verifySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerifyLoading<T> value) verifyLoading,
    required TResult Function(VerifySuccess<T> value) verifySuccess,
    required TResult Function(VerifyError<T> value) verifyError,
  }) {
    return verifySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerifyLoading<T> value)? verifyLoading,
    TResult? Function(VerifySuccess<T> value)? verifySuccess,
    TResult? Function(VerifyError<T> value)? verifyError,
  }) {
    return verifySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerifyLoading<T> value)? verifyLoading,
    TResult Function(VerifySuccess<T> value)? verifySuccess,
    TResult Function(VerifyError<T> value)? verifyError,
    required TResult orElse(),
  }) {
    if (verifySuccess != null) {
      return verifySuccess(this);
    }
    return orElse();
  }
}

abstract class VerifySuccess<T> implements PinCodeVerificationState<T> {
  const factory VerifySuccess() = _$VerifySuccessImpl<T>;
}

/// @nodoc
abstract class _$$VerifyErrorImplCopyWith<T, $Res> {
  factory _$$VerifyErrorImplCopyWith(_$VerifyErrorImpl<T> value,
          $Res Function(_$VerifyErrorImpl<T>) then) =
      __$$VerifyErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$VerifyErrorImplCopyWithImpl<T, $Res>
    extends _$PinCodeVerificationStateCopyWithImpl<T, $Res,
        _$VerifyErrorImpl<T>> implements _$$VerifyErrorImplCopyWith<T, $Res> {
  __$$VerifyErrorImplCopyWithImpl(
      _$VerifyErrorImpl<T> _value, $Res Function(_$VerifyErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PinCodeVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$VerifyErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyErrorImpl<T> implements VerifyError<T> {
  const _$VerifyErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PinCodeVerificationState<$T>.verifyError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PinCodeVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyErrorImplCopyWith<T, _$VerifyErrorImpl<T>> get copyWith =>
      __$$VerifyErrorImplCopyWithImpl<T, _$VerifyErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verifyLoading,
    required TResult Function() verifySuccess,
    required TResult Function(String error) verifyError,
  }) {
    return verifyError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verifyLoading,
    TResult? Function()? verifySuccess,
    TResult? Function(String error)? verifyError,
  }) {
    return verifyError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verifyLoading,
    TResult Function()? verifySuccess,
    TResult Function(String error)? verifyError,
    required TResult orElse(),
  }) {
    if (verifyError != null) {
      return verifyError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerifyLoading<T> value) verifyLoading,
    required TResult Function(VerifySuccess<T> value) verifySuccess,
    required TResult Function(VerifyError<T> value) verifyError,
  }) {
    return verifyError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerifyLoading<T> value)? verifyLoading,
    TResult? Function(VerifySuccess<T> value)? verifySuccess,
    TResult? Function(VerifyError<T> value)? verifyError,
  }) {
    return verifyError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerifyLoading<T> value)? verifyLoading,
    TResult Function(VerifySuccess<T> value)? verifySuccess,
    TResult Function(VerifyError<T> value)? verifyError,
    required TResult orElse(),
  }) {
    if (verifyError != null) {
      return verifyError(this);
    }
    return orElse();
  }
}

abstract class VerifyError<T> implements PinCodeVerificationState<T> {
  const factory VerifyError(final String error) = _$VerifyErrorImpl<T>;

  String get error;

  /// Create a copy of PinCodeVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyErrorImplCopyWith<T, _$VerifyErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
