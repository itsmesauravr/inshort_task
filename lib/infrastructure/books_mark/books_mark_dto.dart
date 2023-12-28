import 'package:hive_flutter/hive_flutter.dart';

part 'books_mark_dto.g.dart';


@HiveType(typeId: 1)
class BooksMarkDto {
  @HiveField(1)
  String author;
  @HiveField(2)
  String content;
  @HiveField(3)
  String date;
  @HiveField(4)
  String id;
  @HiveField(5)
  String imageUrl;
  @HiveField(6)
  String readMoreUrl;
  @HiveField(7)
  String time;
  @HiveField(8)
  String title;
  @HiveField(9)
  String url;

  BooksMarkDto({
    required this.author,
    required this.content,
    required this.date,
    required this.id,
    required this.imageUrl,
    required this.readMoreUrl,
    required this.time,
    required this.title,
    required this.url,
  });
}
