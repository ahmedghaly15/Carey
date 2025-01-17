// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_rates_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchRatesResponseAdapter extends TypeAdapter<FetchRatesResponse> {
  @override
  final int typeId = 12;

  @override
  FetchRatesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchRatesResponse(
      totalItems: fields[0] as int,
      totalPages: fields[1] as int,
      currentPage: fields[2] as int,
      reviews: (fields[3] as List).cast<RateResponseItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchRatesResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.totalItems)
      ..writeByte(1)
      ..write(obj.totalPages)
      ..writeByte(2)
      ..write(obj.currentPage)
      ..writeByte(3)
      ..write(obj.reviews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchRatesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RateResponseItemAdapter extends TypeAdapter<RateResponseItem> {
  @override
  final int typeId = 13;

  @override
  RateResponseItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RateResponseItem(
      id: fields[0] as int,
      rate: fields[1] as int?,
      comment: fields[2] as String,
      createdAt: fields[3] as String?,
      user: fields[4] as CareyUser,
      reacts: (fields[5] as List).cast<RateReact>(),
    );
  }

  @override
  void write(BinaryWriter writer, RateResponseItem obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.rate)
      ..writeByte(2)
      ..write(obj.comment)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.user)
      ..writeByte(5)
      ..write(obj.reacts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RateResponseItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RateReactAdapter extends TypeAdapter<RateReact> {
  @override
  final int typeId = 16;

  @override
  RateReact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RateReact(
      id: fields[0] as int,
      react: fields[1] as String,
      user: fields[2] as CareyUser,
    );
  }

  @override
  void write(BinaryWriter writer, RateReact obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.react)
      ..writeByte(2)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RateReactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateReact _$RateReactFromJson(Map<String, dynamic> json) => RateReact(
      id: (json['id'] as num).toInt(),
      react: json['react'] as String,
      user: CareyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RateReactToJson(RateReact instance) => <String, dynamic>{
      'id': instance.id,
      'react': instance.react,
      'user': instance.user.toJson(),
    };

_$FetchRatesResponseImpl _$$FetchRatesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchRatesResponseImpl(
      totalItems: (json['totalItems'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      reviews: (json['data'] as List<dynamic>)
          .map((e) => RateResponseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchRatesResponseImplToJson(
        _$FetchRatesResponseImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'data': instance.reviews.map((e) => e.toJson()).toList(),
    };

_$RateResponseItemImpl _$$RateResponseItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RateResponseItemImpl(
      id: (json['id'] as num).toInt(),
      rate: (json['rate'] as num?)?.toInt(),
      comment: json['comment'] as String,
      createdAt: json['createdAt'] as String?,
      user: CareyUser.fromJson(json['user'] as Map<String, dynamic>),
      reacts: (json['reacts'] as List<dynamic>)
          .map((e) => RateReact.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RateResponseItemImplToJson(
        _$RateResponseItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'user': instance.user.toJson(),
      'reacts': instance.reacts.map((e) => e.toJson()).toList(),
    };
