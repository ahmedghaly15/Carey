// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometric_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BiometricState {
  BiometricStateStatus get status => throw _privateConstructorUsedError;
  bool get fingerprintAuthenticated => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CareyUser? get careyUser => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiometricStateCopyWith<BiometricState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricStateCopyWith<$Res> {
  factory $BiometricStateCopyWith(
          BiometricState value, $Res Function(BiometricState) then) =
      _$BiometricStateCopyWithImpl<$Res, BiometricState>;
  @useResult
  $Res call(
      {BiometricStateStatus status,
      bool fingerprintAuthenticated,
      String? error,
      CareyUser? careyUser,
      bool isPasswordObscured});

  $CareyUserCopyWith<$Res>? get careyUser;
}

/// @nodoc
class _$BiometricStateCopyWithImpl<$Res, $Val extends BiometricState>
    implements $BiometricStateCopyWith<$Res> {
  _$BiometricStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? fingerprintAuthenticated = null,
    Object? error = freezed,
    Object? careyUser = freezed,
    Object? isPasswordObscured = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStateStatus,
      fingerprintAuthenticated: null == fingerprintAuthenticated
          ? _value.fingerprintAuthenticated
          : fingerprintAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      careyUser: freezed == careyUser
          ? _value.careyUser
          : careyUser // ignore: cast_nullable_to_non_nullable
              as CareyUser?,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareyUserCopyWith<$Res>? get careyUser {
    if (_value.careyUser == null) {
      return null;
    }

    return $CareyUserCopyWith<$Res>(_value.careyUser!, (value) {
      return _then(_value.copyWith(careyUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiometricStateImplCopyWith<$Res>
    implements $BiometricStateCopyWith<$Res> {
  factory _$$BiometricStateImplCopyWith(_$BiometricStateImpl value,
          $Res Function(_$BiometricStateImpl) then) =
      __$$BiometricStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BiometricStateStatus status,
      bool fingerprintAuthenticated,
      String? error,
      CareyUser? careyUser,
      bool isPasswordObscured});

  @override
  $CareyUserCopyWith<$Res>? get careyUser;
}

/// @nodoc
class __$$BiometricStateImplCopyWithImpl<$Res>
    extends _$BiometricStateCopyWithImpl<$Res, _$BiometricStateImpl>
    implements _$$BiometricStateImplCopyWith<$Res> {
  __$$BiometricStateImplCopyWithImpl(
      _$BiometricStateImpl _value, $Res Function(_$BiometricStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? fingerprintAuthenticated = null,
    Object? error = freezed,
    Object? careyUser = freezed,
    Object? isPasswordObscured = null,
  }) {
    return _then(_$BiometricStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStateStatus,
      fingerprintAuthenticated: null == fingerprintAuthenticated
          ? _value.fingerprintAuthenticated
          : fingerprintAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      careyUser: freezed == careyUser
          ? _value.careyUser
          : careyUser // ignore: cast_nullable_to_non_nullable
              as CareyUser?,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BiometricStateImpl implements _BiometricState {
  const _$BiometricStateImpl(
      {required this.status,
      this.fingerprintAuthenticated = false,
      this.error,
      this.careyUser,
      this.isPasswordObscured = true});

  @override
  final BiometricStateStatus status;
  @override
  @JsonKey()
  final bool fingerprintAuthenticated;
  @override
  final String? error;
  @override
  final CareyUser? careyUser;
  @override
  @JsonKey()
  final bool isPasswordObscured;

  @override
  String toString() {
    return 'BiometricState(status: $status, fingerprintAuthenticated: $fingerprintAuthenticated, error: $error, careyUser: $careyUser, isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.fingerprintAuthenticated, fingerprintAuthenticated) ||
                other.fingerprintAuthenticated == fingerprintAuthenticated) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.careyUser, careyUser) ||
                other.careyUser == careyUser) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, fingerprintAuthenticated,
      error, careyUser, isPasswordObscured);

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricStateImplCopyWith<_$BiometricStateImpl> get copyWith =>
      __$$BiometricStateImplCopyWithImpl<_$BiometricStateImpl>(
          this, _$identity);
}

abstract class _BiometricState implements BiometricState {
  const factory _BiometricState(
      {required final BiometricStateStatus status,
      final bool fingerprintAuthenticated,
      final String? error,
      final CareyUser? careyUser,
      final bool isPasswordObscured}) = _$BiometricStateImpl;

  @override
  BiometricStateStatus get status;
  @override
  bool get fingerprintAuthenticated;
  @override
  String? get error;
  @override
  CareyUser? get careyUser;
  @override
  bool get isPasswordObscured;

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricStateImplCopyWith<_$BiometricStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
