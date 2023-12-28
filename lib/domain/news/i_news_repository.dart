import 'package:dartz/dartz.dart';
import 'package:inshort_task/domain/news/news_failiure.dart';
import 'package:inshort_task/infrastructure/news/news_dto.dart';

abstract class INewsRepository {
  Future<Either<NewsFailure, List<NewsData>>> getNews(String category);
}