import 'package:json_annotation/json_annotation.dart';

part 'add_review_request_params.g.dart';

@JsonSerializable()
class AddReviewRequestParams {
  final int rate, carId;
  final String comment;

  AddReviewRequestParams({
    required this.rate,
    required this.carId,
    required this.comment,
  });

  factory AddReviewRequestParams.fromJson(Map<String, dynamic> json) =>
      _$AddReviewRequestParamsFromJson(json);
  Map<String, dynamic> toJson() => _$AddReviewRequestParamsToJson(this);
}
