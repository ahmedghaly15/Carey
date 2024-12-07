// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarAdapter extends TypeAdapter<Car> {
  @override
  final int typeId = 1;

  @override
  Car read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Car(
      id: fields[0] as int,
      name: fields[1] as String,
      type: fields[2] as String,
      price: fields[3] as String,
      brand: fields[4] as CarBrandModel?,
      attachments: (fields[5] as List).cast<CarAttachment>(),
      rates: (fields[6] as List?)?.cast<CarRate>(),
      user: fields[7] as CarUser?,
    );
  }

  @override
  void write(BinaryWriter writer, Car obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.brand)
      ..writeByte(5)
      ..write(obj.attachments)
      ..writeByte(6)
      ..write(obj.rates)
      ..writeByte(7)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CarBrandModelAdapter extends TypeAdapter<CarBrandModel> {
  @override
  final int typeId = 2;

  @override
  CarBrandModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarBrandModel(
      id: fields[0] as int,
      name: fields[1] as String,
      image: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CarBrandModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarBrandModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CarAttachmentAdapter extends TypeAdapter<CarAttachment> {
  @override
  final int typeId = 3;

  @override
  CarAttachment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarAttachment(
      id: fields[0] as int,
      type: fields[1] as String,
      url: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CarAttachment obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarAttachmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CarRateAdapter extends TypeAdapter<CarRate> {
  @override
  final int typeId = 4;

  @override
  CarRate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarRate(
      id: fields[0] as int,
      rate: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CarRate obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.rate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarRateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CarUserAdapter extends TypeAdapter<CarUser> {
  @override
  final int typeId = 7;

  @override
  CarUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarUser(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CarUser obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      price: json['price'] as String,
      brand: json['brand'] == null
          ? null
          : CarBrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => CarAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => CarRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : CarUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'brand': instance.brand?.toJson(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'rates': instance.rates?.map((e) => e.toJson()).toList(),
      'user': instance.user?.toJson(),
    };

CarBrandModel _$CarBrandModelFromJson(Map<String, dynamic> json) =>
    CarBrandModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CarBrandModelToJson(CarBrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

CarAttachment _$CarAttachmentFromJson(Map<String, dynamic> json) =>
    CarAttachment(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$CarAttachmentToJson(CarAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'url': instance.url,
    };

CarRate _$CarRateFromJson(Map<String, dynamic> json) => CarRate(
      id: (json['id'] as num).toInt(),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$CarRateToJson(CarRate instance) => <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
    };

CarUser _$CarUserFromJson(Map<String, dynamic> json) => CarUser(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$CarUserToJson(CarUser instance) => <String, dynamic>{
      'id': instance.id,
    };
