import 'package:dartz/dartz.dart';
import 'package:inshort_task/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword (String input) {
  if ( input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}