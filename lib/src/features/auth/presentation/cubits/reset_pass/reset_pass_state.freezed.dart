// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPassState {
  ResetPassStateStatus get status => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  bool get isConfirmPassObscured => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPassStateCopyWith<ResetPassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPassStateCopyWith<$Res> {
  factory $ResetPassStateCopyWith(
          ResetPassState value, $Res Function(ResetPassState) then) =
      _$ResetPassStateCopyWithImpl<$Res, ResetPassState>;
  @useResult
  $Res call(
      {ResetPassStateStatus status,
      bool rememberMe,
      bool isPasswordObscured,
      bool isConfirmPassObscured,
      String? error});
}

/// @nodoc
class _$ResetPassStateCopyWithImpl<$Res, $Val extends ResetPassState>
    implements $ResetPassStateCopyWith<$Res> {
  _$ResetPassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rememberMe = null,
    Object? isPasswordObscured = null,
    Object? isConfirmPassObscured = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPassStateStatus,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPassObscured: null == isConfirmPassObscured
          ? _value.isConfirmPassObscured
          : isConfirmPassObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPassStateImplCopyWith<$Res>
    implements $ResetPassStateCopyWith<$Res> {
  factory _$$ResetPassStateImplCopyWith(_$ResetPassStateImpl value,
          $Res Function(_$ResetPassStateImpl) then) =
      __$$ResetPassStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResetPassStateStatus status,
      bool rememberMe,
      bool isPasswordObscured,
      bool isConfirmPassObscured,
      String? error});
}

/// @nodoc
class __$$ResetPassStateImplCopyWithImpl<$Res>
    extends _$ResetPassStateCopyWithImpl<$Res, _$ResetPassStateImpl>
    implements _$$ResetPassStateImplCopyWith<$Res> {
  __$$ResetPassStateImplCopyWithImpl(
      _$ResetPassStateImpl _value, $Res Function(_$ResetPassStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rememberMe = null,
    Object? isPasswordObscured = null,
    Object? isConfirmPassObscured = null,
    Object? error = freezed,
  }) {
    return _then(_$ResetPassStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPassStateStatus,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPassObscured: null == isConfirmPassObscured
          ? _value.isConfirmPassObscured
          : isConfirmPassObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResetPassStateImpl implements _ResetPassState {
  const _$ResetPassStateImpl(
      {required this.status,
      this.rememberMe = false,
      this.isPasswordObscured = true,
      this.isConfirmPassObscured = true,
      this.error});

  @override
  final ResetPassStateStatus status;
  @override
  @JsonKey()
  final bool rememberMe;
  @override
  @JsonKey()
  final bool isPasswordObscured;
  @override
  @JsonKey()
  final bool isConfirmPassObscured;
  @override
  final String? error;

  @override
  String toString() {
    return 'ResetPassState(status: $status, rememberMe: $rememberMe, isPasswordObscured: $isPasswordObscured, isConfirmPassObscured: $isConfirmPassObscured, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPassStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured) &&
            (identical(other.isConfirmPassObscured, isConfirmPassObscured) ||
                other.isConfirmPassObscured == isConfirmPassObscured) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, rememberMe,
      isPasswordObscured, isConfirmPassObscured, error);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPassStateImplCopyWith<_$ResetPassStateImpl> get copyWith =>
      __$$ResetPassStateImplCopyWithImpl<_$ResetPassStateImpl>(
          this, _$identity);
}

abstract class _ResetPassState implements ResetPassState {
  const factory _ResetPassState(
      {required final ResetPassStateStatus status,
      final bool rememberMe,
      final bool isPasswordObscured,
      final bool isConfirmPassObscured,
      final String? error}) = _$ResetPassStateImpl;

  @override
  ResetPassStateStatus get status;
  @override
  bool get rememberMe;
  @override
  bool get isPasswordObscured;
  @override
  bool get isConfirmPassObscured;
  @override
  String? get error;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPassStateImplCopyWith<_$ResetPassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
