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
      name: fields[1] as String?,
      type: fields[2] as String?,
      price: fields[3] as String?,
      attachments: (fields[5] as List?)?.cast<CarAttachment>(),
      brand: fields[4] as CarBrandModel?,
      rates: (fields[6] as List?)?.cast<CarRate>(),
      user: fields[7] as CarUser?,
      status: fields[8] as String?,
      available: fields[9] as bool?,
      wishlists: (fields[12] as List?)?.cast<CarWishlist>(),
      createdAt: fields[10] as String?,
      updatedAt: fields[11] as String?,
      description: fields[13] as String?,
      colors: (fields[14] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Car obj) {
    writer
      ..writeByte(15)
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
      ..write(obj.user)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.available)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt)
      ..writeByte(12)
      ..write(obj.wishlists)
      ..writeByte(13)
      ..write(obj.description)
      ..writeByte(14)
      ..write(obj.colors);
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
      createdAt: fields[3] as String?,
      updatedAt: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CarBrandModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt);
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
      createdAt: fields[3] as String?,
      updatedAt: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CarAttachment obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt);
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
      comment: fields[2] as String?,
      createdAt: fields[3] as String?,
      updatedAt: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CarRate obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.rate)
      ..writeByte(2)
      ..write(obj.comment)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt);
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

class CarWishlistAdapter extends TypeAdapter<CarWishlist> {
  @override
  final int typeId = 11;

  @override
  CarWishlist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarWishlist(
      id: fields[0] as int,
      createdAt: fields[1] as String?,
      updatedAt: fields[2] as String?,
      user: fields[3] as CarUser?,
    );
  }

  @override
  void write(BinaryWriter writer, CarWishlist obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarWishlistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      price: json['price'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => CarAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand: json['brand'] == null
          ? null
          : CarBrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => CarRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : CarUser.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as String?,
      available: json['available'] as bool?,
      wishlists: (json['wishlists'] as List<dynamic>?)
          ?.map((e) => CarWishlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      description: json['description'] as String?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'brand': instance.brand?.toJson(),
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'rates': instance.rates?.map((e) => e.toJson()).toList(),
      'user': instance.user?.toJson(),
      'status': instance.status,
      'available': instance.available,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'wishlists': instance.wishlists?.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'colors': instance.colors,
    };

CarBrandModel _$CarBrandModelFromJson(Map<String, dynamic> json) =>
    CarBrandModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CarBrandModelToJson(CarBrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

CarAttachment _$CarAttachmentFromJson(Map<String, dynamic> json) =>
    CarAttachment(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      url: json['url'] as String,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CarAttachmentToJson(CarAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

CarRate _$CarRateFromJson(Map<String, dynamic> json) => CarRate(
      id: (json['id'] as num).toInt(),
      rate: (json['rate'] as num).toDouble(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CarRateToJson(CarRate instance) => <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

CarUser _$CarUserFromJson(Map<String, dynamic> json) => CarUser(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$CarUserToJson(CarUser instance) => <String, dynamic>{
      'id': instance.id,
    };

CarWishlist _$CarWishlistFromJson(Map<String, dynamic> json) => CarWishlist(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      user: json['user'] == null
          ? null
          : CarUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CarWishlistToJson(CarWishlist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user': instance.user?.toJson(),
    };
