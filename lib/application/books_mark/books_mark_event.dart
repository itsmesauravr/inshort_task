part of 'books_mark_bloc.dart';

@freezed
class BooksMarkEvent with _$BooksMarkEvent {
  const factory BooksMarkEvent.addRemoveBooksMark(BooksMarkDto booksMarkDto) = _AddRemoveBooksMark;
  const factory BooksMarkEvent.isBookMarked(String title) = _IsBookMarked;
  const factory BooksMarkEvent.getRemoveBooksMark(String title) = _GetRemoveBooksMark;
  const factory BooksMarkEvent.getBooksMark() = _GetBooksMark;
}