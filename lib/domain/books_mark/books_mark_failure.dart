import 'package:freezed_annotation/freezed_annotation.dart';
part 'books_mark_failure.freezed.dart';

@freezed
class BooksMarkFailure with _$BooksMarkFailure {
  const factory BooksMarkFailure.unexpected() = _Unexpected;
  const factory BooksMarkFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory BooksMarkFailure.unableToUpdate() = _UnableToUpdate;
}
