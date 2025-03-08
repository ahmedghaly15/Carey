// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_review_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReviewRequestParams _$AddReviewRequestParamsFromJson(
        Map<String, dynamic> json) =>
    AddReviewRequestParams(
      rate: (json['rate'] as num).toInt(),
      carId: (json['carId'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$AddReviewRequestParamsToJson(
        AddReviewRequestParams instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'carId': instance.carId,
      'comment': instance.comment,
    };
