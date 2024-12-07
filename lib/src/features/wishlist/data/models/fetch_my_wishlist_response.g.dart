// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_my_wishlist_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchMyWishlistResponseAdapter
    extends TypeAdapter<FetchMyWishlistResponse> {
  @override
  final int typeId = 8;

  @override
  FetchMyWishlistResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchMyWishlistResponse(
      data: (fields[0] as List).cast<Wishlist>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchMyWishlistResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchMyWishlistResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WishlistAdapter extends TypeAdapter<Wishlist> {
  @override
  final int typeId = 9;

  @override
  Wishlist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Wishlist(
      id: fields[0] as int,
      car: fields[1] as Car,
    );
  }

  @override
  void write(BinaryWriter writer, Wishlist obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.car);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishlistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchMyWishlistResponse _$FetchMyWishlistResponseFromJson(
        Map<String, dynamic> json) =>
    FetchMyWishlistResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Wishlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchMyWishlistResponseToJson(
        FetchMyWishlistResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

Wishlist _$WishlistFromJson(Map<String, dynamic> json) => Wishlist(
      id: (json['id'] as num).toInt(),
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishlistToJson(Wishlist instance) => <String, dynamic>{
      'id': instance.id,
      'car': instance.car.toJson(),
    };
