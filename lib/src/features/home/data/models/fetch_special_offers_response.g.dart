// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_special_offers_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchSpecialOffersResponseAdapter
    extends TypeAdapter<FetchSpecialOffersResponse> {
  @override
  final int typeId = 5;

  @override
  FetchSpecialOffersResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchSpecialOffersResponse(
      data: (fields[0] as List).cast<SpecialOffer>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchSpecialOffersResponse obj) {
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
      other is FetchSpecialOffersResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpecialOfferAdapter extends TypeAdapter<SpecialOffer> {
  @override
  final int typeId = 6;

  @override
  SpecialOffer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecialOffer(
      id: fields[0] as int,
      discount: fields[1] as int,
      type: fields[2] as String,
      description: fields[3] as String,
      car: fields[4] as Car,
    );
  }

  @override
  void write(BinaryWriter writer, SpecialOffer obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.discount)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.car);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpecialOfferAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSpecialOffersResponse _$FetchSpecialOffersResponseFromJson(
        Map<String, dynamic> json) =>
    FetchSpecialOffersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => SpecialOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchSpecialOffersResponseToJson(
        FetchSpecialOffersResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

SpecialOffer _$SpecialOfferFromJson(Map<String, dynamic> json) => SpecialOffer(
      id: (json['id'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      type: json['type'] as String,
      description: json['description'] as String,
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpecialOfferToJson(SpecialOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'type': instance.type,
      'description': instance.description,
      'car': instance.car.toJson(),
    };
