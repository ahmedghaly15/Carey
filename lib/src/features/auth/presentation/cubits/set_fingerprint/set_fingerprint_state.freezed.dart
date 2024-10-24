// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_fingerprint_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetFingerprintState {
  SetFingerprintStateStatus get status => throw _privateConstructorUsedError;
  AuthResponseEntity? get currentUserData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of SetFingerprintState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetFingerprintStateCopyWith<SetFingerprintState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetFingerprintStateCopyWith<$Res> {
  factory $SetFingerprintStateCopyWith(
          SetFingerprintState value, $Res Function(SetFingerprintState) then) =
      _$SetFingerprintStateCopyWithImpl<$Res, SetFingerprintState>;
  @useResult
  $Res call(
      {SetFingerprintStateStatus status,
      AuthResponseEntity? currentUserData,
      String? error});

  $AuthResponseEntityCopyWith<$Res>? get currentUserData;
}

/// @nodoc
class _$SetFingerprintStateCopyWithImpl<$Res, $Val extends SetFingerprintState>
    implements $SetFingerprintStateCopyWith<$Res> {
  _$SetFingerprintStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetFingerprintState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUserData = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetFingerprintStateStatus,
      currentUserData: freezed == currentUserData
          ? _value.currentUserData
          : currentUserData // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SetFingerprintState
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
abstract class _$$SetFingerprintStateImplCopyWith<$Res>
    implements $SetFingerprintStateCopyWith<$Res> {
  factory _$$SetFingerprintStateImplCopyWith(_$SetFingerprintStateImpl value,
          $Res Function(_$SetFingerprintStateImpl) then) =
      __$$SetFingerprintStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SetFingerprintStateStatus status,
      AuthResponseEntity? currentUserData,
      String? error});

  @override
  $AuthResponseEntityCopyWith<$Res>? get currentUserData;
}

/// @nodoc
class __$$SetFingerprintStateImplCopyWithImpl<$Res>
    extends _$SetFingerprintStateCopyWithImpl<$Res, _$SetFingerprintStateImpl>
    implements _$$SetFingerprintStateImplCopyWith<$Res> {
  __$$SetFingerprintStateImplCopyWithImpl(_$SetFingerprintStateImpl _value,
      $Res Function(_$SetFingerprintStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetFingerprintState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUserData = freezed,
    Object? error = freezed,
  }) {
    return _then(_$SetFingerprintStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetFingerprintStateStatus,
      currentUserData: freezed == currentUserData
          ? _value.currentUserData
          : currentUserData // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SetFingerprintStateImpl implements _SetFingerprintState {
  const _$SetFingerprintStateImpl(
      {required this.status, this.currentUserData, this.error});

  @override
  final SetFingerprintStateStatus status;
  @override
  final AuthResponseEntity? currentUserData;
  @override
  final String? error;

  @override
  String toString() {
    return 'SetFingerprintState(status: $status, currentUserData: $currentUserData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFingerprintStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUserData, currentUserData) ||
                other.currentUserData == currentUserData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentUserData, error);

  /// Create a copy of SetFingerprintState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFingerprintStateImplCopyWith<_$SetFingerprintStateImpl> get copyWith =>
      __$$SetFingerprintStateImplCopyWithImpl<_$SetFingerprintStateImpl>(
          this, _$identity);
}

abstract class _SetFingerprintState implements SetFingerprintState {
  const factory _SetFingerprintState(
      {required final SetFingerprintStateStatus status,
      final AuthResponseEntity? currentUserData,
      final String? error}) = _$SetFingerprintStateImpl;

  @override
  SetFingerprintStateStatus get status;
  @override
  AuthResponseEntity? get currentUserData;
  @override
  String? get error;

  /// Create a copy of SetFingerprintState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetFingerprintStateImplCopyWith<_$SetFingerprintStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
