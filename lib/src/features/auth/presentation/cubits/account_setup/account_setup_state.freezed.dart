// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_setup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountSetupState {
  AccountSetupStateStatus get status => throw _privateConstructorUsedError;
  AuthResponseEntity? get currentUserData => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AccountSetupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSetupStateCopyWith<AccountSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSetupStateCopyWith<$Res> {
  factory $AccountSetupStateCopyWith(
          AccountSetupState value, $Res Function(AccountSetupState) then) =
      _$AccountSetupStateCopyWithImpl<$Res, AccountSetupState>;
  @useResult
  $Res call(
      {AccountSetupStateStatus status,
      AuthResponseEntity? currentUserData,
      AutovalidateMode autovalidateMode,
      String? error});

  $AuthResponseEntityCopyWith<$Res>? get currentUserData;
}

/// @nodoc
class _$AccountSetupStateCopyWithImpl<$Res, $Val extends AccountSetupState>
    implements $AccountSetupStateCopyWith<$Res> {
  _$AccountSetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSetupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUserData = freezed,
    Object? autovalidateMode = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountSetupStateStatus,
      currentUserData: freezed == currentUserData
          ? _value.currentUserData
          : currentUserData // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AccountSetupState
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
abstract class _$$AccountSetupStateImplCopyWith<$Res>
    implements $AccountSetupStateCopyWith<$Res> {
  factory _$$AccountSetupStateImplCopyWith(_$AccountSetupStateImpl value,
          $Res Function(_$AccountSetupStateImpl) then) =
      __$$AccountSetupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountSetupStateStatus status,
      AuthResponseEntity? currentUserData,
      AutovalidateMode autovalidateMode,
      String? error});

  @override
  $AuthResponseEntityCopyWith<$Res>? get currentUserData;
}

/// @nodoc
class __$$AccountSetupStateImplCopyWithImpl<$Res>
    extends _$AccountSetupStateCopyWithImpl<$Res, _$AccountSetupStateImpl>
    implements _$$AccountSetupStateImplCopyWith<$Res> {
  __$$AccountSetupStateImplCopyWithImpl(_$AccountSetupStateImpl _value,
      $Res Function(_$AccountSetupStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountSetupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUserData = freezed,
    Object? autovalidateMode = null,
    Object? error = freezed,
  }) {
    return _then(_$AccountSetupStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountSetupStateStatus,
      currentUserData: freezed == currentUserData
          ? _value.currentUserData
          : currentUserData // ignore: cast_nullable_to_non_nullable
              as AuthResponseEntity?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountSetupStateImpl implements _AccountSetupState {
  const _$AccountSetupStateImpl(
      {required this.status,
      this.currentUserData,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.error});

  @override
  final AccountSetupStateStatus status;
  @override
  final AuthResponseEntity? currentUserData;
  @override
  @JsonKey()
  final AutovalidateMode autovalidateMode;
  @override
  final String? error;

  @override
  String toString() {
    return 'AccountSetupState(status: $status, currentUserData: $currentUserData, autovalidateMode: $autovalidateMode, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSetupStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUserData, currentUserData) ||
                other.currentUserData == currentUserData) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, currentUserData, autovalidateMode, error);

  /// Create a copy of AccountSetupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSetupStateImplCopyWith<_$AccountSetupStateImpl> get copyWith =>
      __$$AccountSetupStateImplCopyWithImpl<_$AccountSetupStateImpl>(
          this, _$identity);
}

abstract class _AccountSetupState implements AccountSetupState {
  const factory _AccountSetupState(
      {required final AccountSetupStateStatus status,
      final AuthResponseEntity? currentUserData,
      final AutovalidateMode autovalidateMode,
      final String? error}) = _$AccountSetupStateImpl;

  @override
  AccountSetupStateStatus get status;
  @override
  AuthResponseEntity? get currentUserData;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  String? get error;

  /// Create a copy of AccountSetupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSetupStateImplCopyWith<_$AccountSetupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}