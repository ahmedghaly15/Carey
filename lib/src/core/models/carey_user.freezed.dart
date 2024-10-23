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
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get pinCode => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'LoginAppId')
  String? get loginAppId => throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  bool? get phoneVerified => throw _privateConstructorUsedError;

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
      {int id,
      String email,
      UserRole? role,
      String? password,
      String? fullName,
      String? nickName,
      String? phone,
      String? address,
      String? pinCode,
      String? picture,
      String? gender,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: 'LoginAppId') String? loginAppId,
      bool? emailVerified,
      bool? phoneVerified});
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
    Object? email = null,
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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int id,
      String email,
      UserRole? role,
      String? password,
      String? fullName,
      String? nickName,
      String? phone,
      String? address,
      String? pinCode,
      String? picture,
      String? gender,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: 'LoginAppId') String? loginAppId,
      bool? emailVerified,
      bool? phoneVerified});
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
    Object? email = null,
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
  }) {
    return _then(_$CareyUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CareyUserImpl implements _CareyUser {
  const _$CareyUserImpl(
      {required this.id,
      required this.email,
      this.role,
      this.password,
      this.fullName,
      this.nickName,
      this.phone,
      this.address,
      this.pinCode,
      this.picture,
      this.gender,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: 'LoginAppId') this.loginAppId,
      this.emailVerified,
      this.phoneVerified});

  factory _$CareyUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareyUserImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final UserRole? role;
  @override
  final String? password;
  @override
  final String? fullName;
  @override
  final String? nickName;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? pinCode;
  @override
  final String? picture;
  @override
  final String? gender;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: 'LoginAppId')
  final String? loginAppId;
  @override
  final bool? emailVerified;
  @override
  final bool? phoneVerified;

  @override
  String toString() {
    return 'CareyUser(id: $id, email: $email, role: $role, password: $password, fullName: $fullName, nickName: $nickName, phone: $phone, address: $address, pinCode: $pinCode, picture: $picture, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, loginAppId: $loginAppId, emailVerified: $emailVerified, phoneVerified: $phoneVerified)';
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
                other.phoneVerified == phoneVerified));
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
      phoneVerified);

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
      {required final int id,
      required final String email,
      final UserRole? role,
      final String? password,
      final String? fullName,
      final String? nickName,
      final String? phone,
      final String? address,
      final String? pinCode,
      final String? picture,
      final String? gender,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: 'LoginAppId') final String? loginAppId,
      final bool? emailVerified,
      final bool? phoneVerified}) = _$CareyUserImpl;

  factory _CareyUser.fromJson(Map<String, dynamic> json) =
      _$CareyUserImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  UserRole? get role;
  @override
  String? get password;
  @override
  String? get fullName;
  @override
  String? get nickName;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  String? get pinCode;
  @override
  String? get picture;
  @override
  String? get gender;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: 'LoginAppId')
  String? get loginAppId;
  @override
  bool? get emailVerified;
  @override
  bool? get phoneVerified;

  /// Create a copy of CareyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareyUserImplCopyWith<_$CareyUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
