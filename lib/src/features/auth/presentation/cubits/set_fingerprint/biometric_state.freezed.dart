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
  AuthResponseEntity? get currentUserData => throw _privateConstructorUsedError;
  bool get fingerprintAuthenticated => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
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
      AuthResponseEntity? currentUserData,
      bool fingerprintAuthenticated,
      String? error,
      bool isPasswordObscured});

  $AuthResponseEntityCopyWith<$Res>? get currentUserData;
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
    Object? currentUserData = freezed,
    Object? fingerprintAuthenticated = null,
    Object? error = freezed,
    Object? isPasswordObscured = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStateStatus,
      currentUserData: freezed == currentUserData
          ? _value.currentUserData
          : currentUserData // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity?,
      fingerprintAuthenticated: null == fingerprintAuthenticated
          ? _value.fingerprintAuthenticated
          : fingerprintAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $AuthResponseEntityCopyWith<$Res>? get currentUserData {
    if (_value.currentUserData == null) {
      return null;
    }

    return $AuthResponseEntityCopyWith<$Res>(_value.currentUserData!, (value) {
      return _then(_value.copyWith(currentUserData: value) as $Val);
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
      AuthResponseEntity? currentUserData,
      bool fingerprintAuthenticated,
      String? error,
      bool isPasswordObscured});

  @override
  $AuthResponseEntityCopyWith<$Res>? get currentUserData;
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
    Object? currentUserData = freezed,
    Object? fingerprintAuthenticated = null,
    Object? error = freezed,
    Object? isPasswordObscured = null,
  }) {
    return _then(_$BiometricStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStateStatus,
      currentUserData: freezed == currentUserData
          ? _value.currentUserData
          : currentUserData // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity?,
      fingerprintAuthenticated: null == fingerprintAuthenticated
          ? _value.fingerprintAuthenticated
          : fingerprintAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.currentUserData,
      this.fingerprintAuthenticated = false,
      this.error,
      this.isPasswordObscured = true});

  @override
  final BiometricStateStatus status;
  @override
  final AuthResponseEntity? currentUserData;
  @override
  @JsonKey()
  final bool fingerprintAuthenticated;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isPasswordObscured;

  @override
  String toString() {
    return 'BiometricState(status: $status, currentUserData: $currentUserData, fingerprintAuthenticated: $fingerprintAuthenticated, error: $error, isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUserData, currentUserData) ||
                other.currentUserData == currentUserData) &&
            (identical(
                    other.fingerprintAuthenticated, fingerprintAuthenticated) ||
                other.fingerprintAuthenticated == fingerprintAuthenticated) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentUserData,
      fingerprintAuthenticated, error, isPasswordObscured);

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
      final AuthResponseEntity? currentUserData,
      final bool fingerprintAuthenticated,
      final String? error,
      final bool isPasswordObscured}) = _$BiometricStateImpl;

  @override
  BiometricStateStatus get status;
  @override
  AuthResponseEntity? get currentUserData;
  @override
  bool get fingerprintAuthenticated;
  @override
  String? get error;
  @override
  bool get isPasswordObscured;

  /// Create a copy of BiometricState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricStateImplCopyWith<_$BiometricStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
