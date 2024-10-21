// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorModelImpl _$$ApiErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorModelImpl(
      error:
          (json['message'] as List<dynamic>).map((e) => e as String).toList(),
      errorType: json['error'] as String?,
      statusCode: (json['statusCode'] as num).toInt(),
    );
