import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';
import 'package:carey/src/core/models/carey_user.dart';

part 'fetch_rates_response.freezed.dart';
part 'fetch_rates_response.g.dart';

@freezed
@HiveType(typeId: HiveTypeIds.fetchRatesResponse)
class FetchRatesResponse with _$FetchRatesResponse {
  @JsonSerializable(explicitToJson: true)
  const factory FetchRatesResponse({
    @HiveField(0) required int totalItems,
    @HiveField(1) required int totalPages,
    @HiveField(2) required int currentPage,
    @HiveField(3)
    @JsonKey(name: 'data')
    required List<RateResponseItem> reviews,
  }) = _FetchRatesResponse;

  factory FetchRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchRatesResponseFromJson(json);
}

@freezed
@HiveType(typeId: HiveTypeIds.rateResponseItem)
class RateResponseItem with _$RateResponseItem {
  @JsonSerializable(explicitToJson: true)
  const factory RateResponseItem({
    @HiveField(0) required int id,
    @HiveField(1) int? rate,
    @HiveField(2) required String comment,
    @HiveField(3) String? createdAt,
    @HiveField(4) required CareyUser user,
    @HiveField(5) required List<RateReact> reacts,
  }) = _RateResponseItem;

  factory RateResponseItem.fromJson(Map<String, dynamic> json) =>
      _$RateResponseItemFromJson(json);
}

@HiveType(typeId: HiveTypeIds.rateReact)
@JsonSerializable(explicitToJson: true)
class RateReact {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String react;
  @HiveField(2)
  final CareyUser user;

  RateReact({
    required this.id,
    required this.react,
    required this.user,
  });

  factory RateReact.fromJson(Map<String, dynamic> json) =>
      _$RateReactFromJson(json);
  Map<String, dynamic> toJson() => _$RateReactToJson(this);
}
