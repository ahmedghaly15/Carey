import 'package:json_annotation/json_annotation.dart';

part 'get_account_by_email_params.g.dart';

@JsonSerializable()
class GetAccountByEmailParams {
  final String email;

  GetAccountByEmailParams({required this.email});

  Map<String, dynamic> toJson() => _$GetAccountByEmailParamsToJson(this);
}
