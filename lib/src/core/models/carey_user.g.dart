// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carey_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CareyUserAdapter extends TypeAdapter<CareyUser> {
  @override
  final int typeId = 14;

  @override
  CareyUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CareyUser(
      id: fields[0] as int,
      email: fields[1] as String?,
      role: fields[2] as UserRole?,
      password: fields[3] as String?,
      fullName: fields[4] as String?,
      nickName: fields[5] as String?,
      phone: fields[6] as String?,
      address: fields[7] as String?,
      pinCode: fields[8] as String?,
      picture: fields[9] as String?,
      gender: fields[10] as String?,
      createdAt: fields[11] as String?,
      updatedAt: fields[12] as String?,
      loginAppId: fields[13] as String?,
      emailVerified: fields[14] as bool?,
      phoneVerified: fields[15] as bool?,
      biometricVerified: fields[16] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, CareyUser obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.role)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.fullName)
      ..writeByte(5)
      ..write(obj.nickName)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.pinCode)
      ..writeByte(9)
      ..write(obj.picture)
      ..writeByte(10)
      ..write(obj.gender)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(12)
      ..write(obj.updatedAt)
      ..writeByte(13)
      ..write(obj.loginAppId)
      ..writeByte(14)
      ..write(obj.emailVerified)
      ..writeByte(15)
      ..write(obj.phoneVerified)
      ..writeByte(16)
      ..write(obj.biometricVerified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CareyUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserRoleAdapter extends TypeAdapter<UserRole> {
  @override
  final int typeId = 15;

  @override
  UserRole read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserRole(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserRole obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRoleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRole _$UserRoleFromJson(Map<String, dynamic> json) => UserRole(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CareyUserImpl _$$CareyUserImplFromJson(Map<String, dynamic> json) =>
    _$CareyUserImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String?,
      role: json['role'] == null
          ? null
          : UserRole.fromJson(json['role'] as Map<String, dynamic>),
      password: json['password'] as String?,
      fullName: json['fullName'] as String?,
      nickName: json['nickName'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      pinCode: json['pinCode'] as String?,
      picture: json['picture'] as String?,
      gender: json['gender'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      loginAppId: json['LoginAppId'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      phoneVerified: json['phoneVerified'] as bool?,
      biometricVerified: json['biometricVerified'] as bool?,
    );

Map<String, dynamic> _$$CareyUserImplToJson(_$CareyUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role?.toJson(),
      'password': instance.password,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'phone': instance.phone,
      'address': instance.address,
      'pinCode': instance.pinCode,
      'picture': instance.picture,
      'gender': instance.gender,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'LoginAppId': instance.loginAppId,
      'emailVerified': instance.emailVerified,
      'phoneVerified': instance.phoneVerified,
      'biometricVerified': instance.biometricVerified,
    };
