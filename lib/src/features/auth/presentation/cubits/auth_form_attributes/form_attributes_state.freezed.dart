// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_attributes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormAttributesState {
  FormAttributesStatus get status => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;

  /// Create a copy of FormAttributesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormAttributesStateCopyWith<FormAttributesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormAttributesStateCopyWith<$Res> {
  factory $FormAttributesStateCopyWith(
          FormAttributesState value, $Res Function(FormAttributesState) then) =
      _$FormAttributesStateCopyWithImpl<$Res, FormAttributesState>;
  @useResult
  $Res call(
      {FormAttributesStatus status,
      bool rememberMe,
      AutovalidateMode autovalidateMode,
      bool isPasswordObscured});
}

/// @nodoc
class _$FormAttributesStateCopyWithImpl<$Res, $Val extends FormAttributesState>
    implements $FormAttributesStateCopyWith<$Res> {
  _$FormAttributesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormAttributesState
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
              as FormAttributesStatus,
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
abstract class _$$FormAttributesStateImplCopyWith<$Res>
    implements $FormAttributesStateCopyWith<$Res> {
  factory _$$FormAttributesStateImplCopyWith(_$FormAttributesStateImpl value,
          $Res Function(_$FormAttributesStateImpl) then) =
      __$$FormAttributesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormAttributesStatus status,
      bool rememberMe,
      AutovalidateMode autovalidateMode,
      bool isPasswordObscured});
}

/// @nodoc
class __$$FormAttributesStateImplCopyWithImpl<$Res>
    extends _$FormAttributesStateCopyWithImpl<$Res, _$FormAttributesStateImpl>
    implements _$$FormAttributesStateImplCopyWith<$Res> {
  __$$FormAttributesStateImplCopyWithImpl(_$FormAttributesStateImpl _value,
      $Res Function(_$FormAttributesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormAttributesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rememberMe = null,
    Object? autovalidateMode = null,
    Object? isPasswordObscured = null,
  }) {
    return _then(_$FormAttributesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormAttributesStatus,
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

class _$FormAttributesStateImpl implements _FormAttributesState {
  const _$FormAttributesStateImpl(
      {required this.status,
      this.rememberMe = false,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.isPasswordObscured = true});

  @override
  final FormAttributesStatus status;
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
    return 'FormAttributesState(status: $status, rememberMe: $rememberMe, autovalidateMode: $autovalidateMode, isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormAttributesStateImpl &&
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

  /// Create a copy of FormAttributesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormAttributesStateImplCopyWith<_$FormAttributesStateImpl> get copyWith =>
      __$$FormAttributesStateImplCopyWithImpl<_$FormAttributesStateImpl>(
          this, _$identity);
}

abstract class _FormAttributesState implements FormAttributesState {
  const factory _FormAttributesState(
      {required final FormAttributesStatus status,
      final bool rememberMe,
      final AutovalidateMode autovalidateMode,
      final bool isPasswordObscured}) = _$FormAttributesStateImpl;

  @override
  FormAttributesStatus get status;
  @override
  bool get rememberMe;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  bool get isPasswordObscured;

  /// Create a copy of FormAttributesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormAttributesStateImplCopyWith<_$FormAttributesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
