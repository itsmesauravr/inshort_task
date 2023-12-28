part of 'books_mark_bloc.dart';

@freezed
class BooksMarkState with _$BooksMarkState {
  const factory BooksMarkState({
    required bool isBookMarked,
    required List<BooksMarkDto> failureOrSuccess,
  }) = _BooksMarkState;

  factory BooksMarkState.initial() => const BooksMarkState(
        isBookMarked: false,
        failureOrSuccess: [],
      );
}
