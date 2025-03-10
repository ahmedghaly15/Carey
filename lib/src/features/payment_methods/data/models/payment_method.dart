import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';

@freezed
sealed class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required String name,
    required String img,
    required double price,
  }) = _PaymentMethod;
}
