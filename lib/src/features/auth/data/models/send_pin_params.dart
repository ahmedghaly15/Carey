import 'package:json_annotation/json_annotation.dart';

part 'send_pin_params.g.dart';

@JsonSerializable()
class SendPinParams {
  final int userId;

  SendPinParams({required this.userId});

  Map<String, dynamic> toJson() => _$SendPinParamsToJson(this);
}
