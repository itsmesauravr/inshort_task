import 'package:inshort_task/domain/core/failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() => 'UnExpectedValueError(valueFailure: $valueFailure)';
}