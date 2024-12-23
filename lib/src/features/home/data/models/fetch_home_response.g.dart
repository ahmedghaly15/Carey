// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_home_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeResponseDataAdapter extends TypeAdapter<HomeResponseData> {
  @override
  final int typeId = 0;

  @override
  HomeResponseData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeResponseData(
      brands: (fields[0] as List).cast<CarBrandModel>(),
      bestOffers: (fields[1] as List).cast<Car>(),
      bestCars: (fields[2] as List).cast<Car>(),
    );
  }

  @override
  void write(BinaryWriter writer, HomeResponseData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.brands)
      ..writeByte(1)
      ..write(obj.bestOffers)
      ..writeByte(2)
      ..write(obj.bestCars);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeResponseDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchHomeResponse _$FetchHomeResponseFromJson(Map<String, dynamic> json) =>
    FetchHomeResponse(
      message: json['message'] as String,
      data: HomeResponseData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$FetchHomeResponseToJson(FetchHomeResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
      'statusCode': instance.statusCode,
    };

HomeResponseData _$HomeResponseDataFromJson(Map<String, dynamic> json) =>
    HomeResponseData(
      brands: (json['brands'] as List<dynamic>)
          .map((e) => CarBrandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestOffers: (json['bestOffers'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestCars: (json['bestCars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeResponseDataToJson(HomeResponseData instance) =>
    <String, dynamic>{
      'brands': instance.brands.map((e) => e.toJson()).toList(),
      'bestOffers': instance.bestOffers.map((e) => e.toJson()).toList(),
      'bestCars': instance.bestCars.map((e) => e.toJson()).toList(),
    };
