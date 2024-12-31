// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carey_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CareyUser _$CareyUserFromJson(Map<String, dynamic> json) {
  return _CareyUser.fromJson(json);
}

/// @nodoc
mixin _$CareyUser {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(2)
  UserRole? get role => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get password => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get fullName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get nickName => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get address => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get pinCode => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get picture => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'LoginAppId')
  String? get loginAppId => throw _privateConstructorUsedError;
  @HiveField(14)
  bool? get emailVerified => throw _privateConstructorUsedError;
  @HiveField(15)
  bool? get phoneVerified => throw _privateConstructorUsedError;
  @HiveField(16)
  bool? get biometricVerified => throw _privateConstructorUsedError;

  /// Serializes this CareyUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareyUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareyUserCopyWith<CareyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareyUserCopyWith<$Res> {
  factory $CareyUserCopyWith(CareyUser value, $Res Function(CareyUser) then) =
      _$CareyUserCopyWithImpl<$Res, CareyUser>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? email,
      @HiveField(2) UserRole? role,
      @HiveField(3) String? password,
      @HiveField(4) String? fullName,
      @HiveField(5) String? nickName,
      @HiveField(6) String? phone,
      @HiveField(7) String? address,
      @HiveField(8) String? pinCode,
      @HiveField(9) String? picture,
      @HiveField(10) String? gender,
      @HiveField(11) String? createdAt,
      @HiveField(12) String? updatedAt,
      @HiveField(13) @JsonKey(name: 'LoginAppId') String? loginAppId,
      @HiveField(14) bool? emailVerified,
      @HiveField(15) bool? phoneVerified,
      @HiveField(16) bool? biometricVerified});
}

/// @nodoc
class _$CareyUserCopyWithImpl<$Res, $Val extends CareyUser>
    implements $CareyUserCopyWith<$Res> {
  _$CareyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareyUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? role = freezed,
    Object? password = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? pinCode = freezed,
    Object? picture = freezed,
    Object? gender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loginAppId = freezed,
    Object? emailVerified = freezed,
    Object? phoneVerified = freezed,
    Object? biometricVerified = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      loginAppId: freezed == loginAppId
          ? _value.loginAppId
          : loginAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      biometricVerified: freezed == biometricVerified
          ? _value.biometricVerified
          : biometricVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareyUserImplCopyWith<$Res>
    implements $CareyUserCopyWith<$Res> {
  factory _$$CareyUserImplCopyWith(
          _$CareyUserImpl value, $Res Function(_$CareyUserImpl) then) =
      __$$CareyUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? email,
      @HiveField(2) UserRole? role,
      @HiveField(3) String? password,
      @HiveField(4) String? fullName,
      @HiveField(5) String? nickName,
      @HiveField(6) String? phone,
      @HiveField(7) String? address,
      @HiveField(8) String? pinCode,
      @HiveField(9) String? picture,
      @HiveField(10) String? gender,
      @HiveField(11) String? createdAt,
      @HiveField(12) String? updatedAt,
      @HiveField(13) @JsonKey(name: 'LoginAppId') String? loginAppId,
      @HiveField(14) bool? emailVerified,
      @HiveField(15) bool? phoneVerified,
      @HiveField(16) bool? biometricVerified});
}

/// @nodoc
class __$$CareyUserImplCopyWithImpl<$Res>
    extends _$CareyUserCopyWithImpl<$Res, _$CareyUserImpl>
    implements _$$CareyUserImplCopyWith<$Res> {
  __$$CareyUserImplCopyWithImpl(
      _$CareyUserImpl _value, $Res Function(_$CareyUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareyUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? role = freezed,
    Object? password = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? pinCode = freezed,
    Object? picture = freezed,
    Object? gender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loginAppId = freezed,
    Object? emailVerified = freezed,
    Object? phoneVerified = freezed,
    Object? biometricVerified = freezed,
  }) {
    return _then(_$CareyUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      loginAppId: freezed == loginAppId
          ? _value.loginAppId
          : loginAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      biometricVerified: freezed == biometricVerified
          ? _value.biometricVerified
          : biometricVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CareyUserImpl implements _CareyUser {
  const _$CareyUserImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.email,
      @HiveField(2) this.role,
      @HiveField(3) this.password,
      @HiveField(4) this.fullName,
      @HiveField(5) this.nickName,
      @HiveField(6) this.phone,
      @HiveField(7) this.address,
      @HiveField(8) this.pinCode,
      @HiveField(9) this.picture,
      @HiveField(10) this.gender,
      @HiveField(11) this.createdAt,
      @HiveField(12) this.updatedAt,
      @HiveField(13) @JsonKey(name: 'LoginAppId') this.loginAppId,
      @HiveField(14) this.emailVerified,
      @HiveField(15) this.phoneVerified,
      @HiveField(16) this.biometricVerified});

  factory _$CareyUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareyUserImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String? email;
  @override
  @HiveField(2)
  final UserRole? role;
  @override
  @HiveField(3)
  final String? password;
  @override
  @HiveField(4)
  final String? fullName;
  @override
  @HiveField(5)
  final String? nickName;
  @override
  @HiveField(6)
  final String? phone;
  @override
  @HiveField(7)
  final String? address;
  @override
  @HiveField(8)
  final String? pinCode;
  @override
  @HiveField(9)
  final String? picture;
  @override
  @HiveField(10)
  final String? gender;
  @override
  @HiveField(11)
  final String? createdAt;
  @override
  @HiveField(12)
  final String? updatedAt;
  @override
  @HiveField(13)
  @JsonKey(name: 'LoginAppId')
  final String? loginAppId;
  @override
  @HiveField(14)
  final bool? emailVerified;
  @override
  @HiveField(15)
  final bool? phoneVerified;
  @override
  @HiveField(16)
  final bool? biometricVerified;

  @override
  String toString() {
    return 'CareyUser(id: $id, email: $email, role: $role, password: $password, fullName: $fullName, nickName: $nickName, phone: $phone, address: $address, pinCode: $pinCode, picture: $picture, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, loginAppId: $loginAppId, emailVerified: $emailVerified, phoneVerified: $phoneVerified, biometricVerified: $biometricVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareyUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.loginAppId, loginAppId) ||
                other.loginAppId == loginAppId) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.biometricVerified, biometricVerified) ||
                other.biometricVerified == biometricVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      role,
      password,
      fullName,
      nickName,
      phone,
      address,
      pinCode,
      picture,
      gender,
      createdAt,
      updatedAt,
      loginAppId,
      emailVerified,
      phoneVerified,
      biometricVerified);

  /// Create a copy of CareyUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareyUserImplCopyWith<_$CareyUserImpl> get copyWith =>
      __$$CareyUserImplCopyWithImpl<_$CareyUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareyUserImplToJson(
      this,
    );
  }
}

abstract class _CareyUser implements CareyUser {
  const factory _CareyUser(
      {@HiveField(0) required final int id,
      @HiveField(1) final String? email,
      @HiveField(2) final UserRole? role,
      @HiveField(3) final String? password,
      @HiveField(4) final String? fullName,
      @HiveField(5) final String? nickName,
      @HiveField(6) final String? phone,
      @HiveField(7) final String? address,
      @HiveField(8) final String? pinCode,
      @HiveField(9) final String? picture,
      @HiveField(10) final String? gender,
      @HiveField(11) final String? createdAt,
      @HiveField(12) final String? updatedAt,
      @HiveField(13) @JsonKey(name: 'LoginAppId') final String? loginAppId,
      @HiveField(14) final bool? emailVerified,
      @HiveField(15) final bool? phoneVerified,
      @HiveField(16) final bool? biometricVerified}) = _$CareyUserImpl;

  factory _CareyUser.fromJson(Map<String, dynamic> json) =
      _$CareyUserImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String? get email;
  @override
  @HiveField(2)
  UserRole? get role;
  @override
  @HiveField(3)
  String? get password;
  @override
  @HiveField(4)
  String? get fullName;
  @override
  @HiveField(5)
  String? get nickName;
  @override
  @HiveField(6)
  String? get phone;
  @override
  @HiveField(7)
  String? get address;
  @override
  @HiveField(8)
  String? get pinCode;
  @override
  @HiveField(9)
  String? get picture;
  @override
  @HiveField(10)
  String? get gender;
  @override
  @HiveField(11)
  String? get createdAt;
  @override
  @HiveField(12)
  String? get updatedAt;
  @override
  @HiveField(13)
  @JsonKey(name: 'LoginAppId')
  String? get loginAppId;
  @override
  @HiveField(14)
  bool? get emailVerified;
  @override
  @HiveField(15)
  bool? get phoneVerified;
  @override
  @HiveField(16)
  bool? get biometricVerified;

  /// Create a copy of CareyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareyUserImplCopyWith<_$CareyUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
