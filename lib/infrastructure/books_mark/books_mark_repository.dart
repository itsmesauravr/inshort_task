import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:inshort_task/domain/books_mark/i_books_mark_repository.dart';
import 'package:inshort_task/infrastructure/books_mark/books_mark_dto.dart';

@LazySingleton(as: IBooksMarkRepository)
class BooksMarkRepository implements IBooksMarkRepository {
  @override
  Future<bool> addRemoveBooksMark({required BooksMarkDto booksMarkDto}) async {
    final box = await Hive.openBox<BooksMarkDto>('booksMark');
    if(box.containsKey(booksMarkDto.title)){
      await box.delete(booksMarkDto.title);
      return false;
    }else{
      await box.put(booksMarkDto.title, booksMarkDto);
      return true;
    }
  }

  @override
  Future<List<BooksMarkDto>> getBooksMarked() async {
    final box = await Hive.openBox<BooksMarkDto>('booksMark');
    final list = box.values.toList();
    return list;
  }

  @override
  Future<bool> isBookMarked({required String title}) async {
    final box = await Hive.openBox<BooksMarkDto>('booksMark');
    final isBookMarked = box.containsKey(title);
    return isBookMarked ? true : false;
    // TODO: implement isBookMarked
  }

  @override
  Future<void> getRemoveBooksMark({required String title}) async{
    final box = await Hive.openBox<BooksMarkDto>('booksMark');
    if(box.containsKey(title)){
      await box.delete(title);
    }
  }
}
