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
      data: (fields[3] as List).cast<WishlistResponseDataItem>(),
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

class WishlistResponseDataItemAdapter
    extends TypeAdapter<WishlistResponseDataItem> {
  @override
  final int typeId = 12;

  @override
  WishlistResponseDataItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WishlistResponseDataItem(
      id: fields[0] as int,
      car: fields[1] as Car,
      wishlists: (fields[2] as List).cast<Wishlist>(),
    );
  }

  @override
  void write(BinaryWriter writer, WishlistResponseDataItem obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.car)
      ..writeByte(2)
      ..write(obj.wishlists);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishlistResponseDataItemAdapter &&
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
      user: fields[1] as WishlistUser,
    );
  }

  @override
  void write(BinaryWriter writer, Wishlist obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.user);
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

class WishlistUserAdapter extends TypeAdapter<WishlistUser> {
  @override
  final int typeId = 13;

  @override
  WishlistUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WishlistUser(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WishlistUser obj) {
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
      other is WishlistUserAdapter &&
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
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              WishlistResponseDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchMyWishlistResponseToJson(
        FetchMyWishlistResponse instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

WishlistResponseDataItem _$WishlistResponseDataItemFromJson(
        Map<String, dynamic> json) =>
    WishlistResponseDataItem(
      id: (json['id'] as num).toInt(),
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      wishlists: (json['wishlists'] as List<dynamic>)
          .map((e) => Wishlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WishlistResponseDataItemToJson(
        WishlistResponseDataItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car': instance.car.toJson(),
      'wishlists': instance.wishlists.map((e) => e.toJson()).toList(),
    };

Wishlist _$WishlistFromJson(Map<String, dynamic> json) => Wishlist(
      id: (json['id'] as num).toInt(),
      user: WishlistUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishlistToJson(Wishlist instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
    };

WishlistUser _$WishlistUserFromJson(Map<String, dynamic> json) => WishlistUser(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$WishlistUserToJson(WishlistUser instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
