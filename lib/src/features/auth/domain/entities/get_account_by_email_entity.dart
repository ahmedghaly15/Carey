import 'package:carey/src/features/auth/data/models/login_response.dart';

class GetAccountByEmailEntity {
  final String email;
  final String? phoneNumber;

  GetAccountByEmailEntity({
    required this.email,
    this.phoneNumber,
  });

  factory GetAccountByEmailEntity.toGetAccountByEmailEntity(
    LoginResponse response,
  ) =>
      GetAccountByEmailEntity(
        email: response.data.user.email,
        phoneNumber: response.data.user.phone,
      );
}
