// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFormState {
  AuthFormStateStatus get status => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;

  /// Create a copy of AuthFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthFormStateCopyWith<AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res, AuthFormState>;
  @useResult
  $Res call(
      {AuthFormStateStatus status,
      bool rememberMe,
      AutovalidateMode autovalidateMode,
      bool isPasswordObscured});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res, $Val extends AuthFormState>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rememberMe = null,
    Object? autovalidateMode = null,
    Object? isPasswordObscured = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthFormStateStatus,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthFormStateImplCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$$AuthFormStateImplCopyWith(
          _$AuthFormStateImpl value, $Res Function(_$AuthFormStateImpl) then) =
      __$$AuthFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthFormStateStatus status,
      bool rememberMe,
      AutovalidateMode autovalidateMode,
      bool isPasswordObscured});
}

/// @nodoc
class __$$AuthFormStateImplCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res, _$AuthFormStateImpl>
    implements _$$AuthFormStateImplCopyWith<$Res> {
  __$$AuthFormStateImplCopyWithImpl(
      _$AuthFormStateImpl _value, $Res Function(_$AuthFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rememberMe = null,
    Object? autovalidateMode = null,
    Object? isPasswordObscured = null,
  }) {
    return _then(_$AuthFormStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthFormStateStatus,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthFormStateImpl implements _AuthFormState {
  const _$AuthFormStateImpl(
      {required this.status,
      this.rememberMe = false,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.isPasswordObscured = true});

  @override
  final AuthFormStateStatus status;
  @override
  @JsonKey()
  final bool rememberMe;
  @override
  @JsonKey()
  final AutovalidateMode autovalidateMode;
  @override
  @JsonKey()
  final bool isPasswordObscured;

  @override
  String toString() {
    return 'AuthFormState(status: $status, rememberMe: $rememberMe, autovalidateMode: $autovalidateMode, isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFormStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, rememberMe, autovalidateMode, isPasswordObscured);

  /// Create a copy of AuthFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFormStateImplCopyWith<_$AuthFormStateImpl> get copyWith =>
      __$$AuthFormStateImplCopyWithImpl<_$AuthFormStateImpl>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState(
      {required final AuthFormStateStatus status,
      final bool rememberMe,
      final AutovalidateMode autovalidateMode,
      final bool isPasswordObscured}) = _$AuthFormStateImpl;

  @override
  AuthFormStateStatus get status;
  @override
  bool get rememberMe;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  bool get isPasswordObscured;

  /// Create a copy of AuthFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFormStateImplCopyWith<_$AuthFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
