// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_home_response.dart';

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

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      price: json['price'] as String,
      brand: CarBrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => CarAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      rates: (json['rates'] as List<dynamic>)
          .map((e) => CarRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'brand': instance.brand.toJson(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'rates': instance.rates.map((e) => e.toJson()).toList(),
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
