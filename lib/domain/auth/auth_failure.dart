import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.invalidPassword() = InvalidPassword;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
