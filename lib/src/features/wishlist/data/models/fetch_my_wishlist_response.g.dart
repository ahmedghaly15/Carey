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
      totalItems: fields[0] as int,
      totalPages: fields[1] as int,
      currentPage: fields[2] as int,
      cars: (fields[3] as List).cast<Car>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchMyWishlistResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.totalItems)
      ..writeByte(1)
      ..write(obj.totalPages)
      ..writeByte(2)
      ..write(obj.currentPage)
      ..writeByte(3)
      ..write(obj.cars);
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchMyWishlistResponse _$FetchMyWishlistResponseFromJson(
        Map<String, dynamic> json) =>
    FetchMyWishlistResponse(
      totalItems: (json['totalItems'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      cars: (json['data'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchMyWishlistResponseToJson(
        FetchMyWishlistResponse instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'data': instance.cars.map((e) => e.toJson()).toList(),
    };
