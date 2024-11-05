// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileParams _$UpdateProfileParamsFromJson(Map<String, dynamic> json) {
  return _UpdateProfileParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileParams {
  String? get fullName => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool get biometricVerified => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileParamsCopyWith<$Res> {
  factory $UpdateProfileParamsCopyWith(
          UpdateProfileParams value, $Res Function(UpdateProfileParams) then) =
      _$UpdateProfileParamsCopyWithImpl<$Res, UpdateProfileParams>;
  @useResult
  $Res call(
      {String? fullName,
      String? nickName,
      String? gender,
      String? address,
      String? phone,
      bool biometricVerified});
}

/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res, $Val extends UpdateProfileParams>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? biometricVerified = null,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricVerified: null == biometricVerified
          ? _value.biometricVerified
          : biometricVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileParamsImplCopyWith<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$$UpdateProfileParamsImplCopyWith(_$UpdateProfileParamsImpl value,
          $Res Function(_$UpdateProfileParamsImpl) then) =
      __$$UpdateProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? nickName,
      String? gender,
      String? address,
      String? phone,
      bool biometricVerified});
}

/// @nodoc
class __$$UpdateProfileParamsImplCopyWithImpl<$Res>
    extends _$UpdateProfileParamsCopyWithImpl<$Res, _$UpdateProfileParamsImpl>
    implements _$$UpdateProfileParamsImplCopyWith<$Res> {
  __$$UpdateProfileParamsImplCopyWithImpl(_$UpdateProfileParamsImpl _value,
      $Res Function(_$UpdateProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? biometricVerified = null,
  }) {
    return _then(_$UpdateProfileParamsImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricVerified: null == biometricVerified
          ? _value.biometricVerified
          : biometricVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$UpdateProfileParamsImpl implements _UpdateProfileParams {
  const _$UpdateProfileParamsImpl(
      {this.fullName,
      this.nickName,
      this.gender,
      this.address,
      this.phone,
      this.biometricVerified = false});

  factory _$UpdateProfileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileParamsImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? nickName;
  @override
  final String? gender;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  @JsonKey()
  final bool biometricVerified;

  @override
  String toString() {
    return 'UpdateProfileParams(fullName: $fullName, nickName: $nickName, gender: $gender, address: $address, phone: $phone, biometricVerified: $biometricVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileParamsImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.biometricVerified, biometricVerified) ||
                other.biometricVerified == biometricVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, nickName, gender,
      address, phone, biometricVerified);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      __$$UpdateProfileParamsImplCopyWithImpl<_$UpdateProfileParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileParams implements UpdateProfileParams {
  const factory _UpdateProfileParams(
      {final String? fullName,
      final String? nickName,
      final String? gender,
      final String? address,
      final String? phone,
      final bool biometricVerified}) = _$UpdateProfileParamsImpl;

  factory _UpdateProfileParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileParamsImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get nickName;
  @override
  String? get gender;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  bool get biometricVerified;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
