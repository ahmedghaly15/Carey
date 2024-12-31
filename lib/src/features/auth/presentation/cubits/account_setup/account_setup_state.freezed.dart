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
  CareyUser? get careyUser => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  File? get pickedProfileImg => throw _privateConstructorUsedError;

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
      CareyUser? careyUser,
      AutovalidateMode autovalidateMode,
      String? error,
      String countryCode,
      File? pickedProfileImg});

  $CareyUserCopyWith<$Res>? get careyUser;
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
    Object? careyUser = freezed,
    Object? autovalidateMode = null,
    Object? error = freezed,
    Object? countryCode = null,
    Object? pickedProfileImg = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountSetupStateStatus,
      careyUser: freezed == careyUser
          ? _value.careyUser
          : careyUser // ignore: cast_nullable_to_non_nullable
              as CareyUser?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      pickedProfileImg: freezed == pickedProfileImg
          ? _value.pickedProfileImg
          : pickedProfileImg // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  /// Create a copy of AccountSetupState
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
abstract class _$$AccountSetupStateImplCopyWith<$Res>
    implements $AccountSetupStateCopyWith<$Res> {
  factory _$$AccountSetupStateImplCopyWith(_$AccountSetupStateImpl value,
          $Res Function(_$AccountSetupStateImpl) then) =
      __$$AccountSetupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountSetupStateStatus status,
      CareyUser? careyUser,
      AutovalidateMode autovalidateMode,
      String? error,
      String countryCode,
      File? pickedProfileImg});

  @override
  $CareyUserCopyWith<$Res>? get careyUser;
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
    Object? careyUser = freezed,
    Object? autovalidateMode = null,
    Object? error = freezed,
    Object? countryCode = null,
    Object? pickedProfileImg = freezed,
  }) {
    return _then(_$AccountSetupStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountSetupStateStatus,
      careyUser: freezed == careyUser
          ? _value.careyUser
          : careyUser // ignore: cast_nullable_to_non_nullable
              as CareyUser?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      pickedProfileImg: freezed == pickedProfileImg
          ? _value.pickedProfileImg
          : pickedProfileImg // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$AccountSetupStateImpl implements _AccountSetupState {
  const _$AccountSetupStateImpl(
      {required this.status,
      this.careyUser,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.error,
      this.countryCode = AppConstants.defaultCountryCode,
      this.pickedProfileImg});

  @override
  final AccountSetupStateStatus status;
  @override
  final CareyUser? careyUser;
  @override
  @JsonKey()
  final AutovalidateMode autovalidateMode;
  @override
  final String? error;
  @override
  @JsonKey()
  final String countryCode;
  @override
  final File? pickedProfileImg;

  @override
  String toString() {
    return 'AccountSetupState(status: $status, careyUser: $careyUser, autovalidateMode: $autovalidateMode, error: $error, countryCode: $countryCode, pickedProfileImg: $pickedProfileImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSetupStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.careyUser, careyUser) ||
                other.careyUser == careyUser) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.pickedProfileImg, pickedProfileImg) ||
                other.pickedProfileImg == pickedProfileImg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, careyUser,
      autovalidateMode, error, countryCode, pickedProfileImg);

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
      final CareyUser? careyUser,
      final AutovalidateMode autovalidateMode,
      final String? error,
      final String countryCode,
      final File? pickedProfileImg}) = _$AccountSetupStateImpl;

  @override
  AccountSetupStateStatus get status;
  @override
  CareyUser? get careyUser;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  String? get error;
  @override
  String get countryCode;
  @override
  File? get pickedProfileImg;

  /// Create a copy of AccountSetupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSetupStateImplCopyWith<_$AccountSetupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
