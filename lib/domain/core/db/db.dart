import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inshort_task/infrastructure/books_mark/books_mark_dto.dart';

class BooksMarkDb {
  static final BooksMarkDb ins = BooksMarkDb._internal();
  factory BooksMarkDb() {
    return ins;
  }
  BooksMarkDb._internal();

  Future<void> initHive() async {
    try {
      await Hive.initFlutter();
      Hive.registerAdapter(BooksMarkDtoAdapter());
      await Hive.openBox<BooksMarkDto>('notification');
    } catch (e) {
      debugPrint("Hive Error: $e");
    }
  }
}
