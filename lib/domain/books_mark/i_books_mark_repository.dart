import 'package:inshort_task/infrastructure/books_mark/books_mark_dto.dart';

abstract class IBooksMarkRepository {
  Future<bool> addRemoveBooksMark(
      {required BooksMarkDto booksMarkDto});
  Future<bool> isBookMarked({required String title});
  Future<void> getRemoveBooksMark({required String title});
  Future<List<BooksMarkDto>> getBooksMarked();
}
