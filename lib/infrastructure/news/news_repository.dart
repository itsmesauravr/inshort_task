import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inshort_task/domain/news/i_news_repository.dart';
import 'package:inshort_task/domain/news/news_failiure.dart';
import 'package:inshort_task/infrastructure/core/services/api_services.dart';
import 'package:inshort_task/infrastructure/news/news_dto.dart';

@LazySingleton(as: INewsRepository)
class NewsRepository implements INewsRepository {
  @override
  Future<Either<NewsFailure, List<NewsData>>> getNews(String category) async{
    try{
      final response =await ApiServices.create().getNews(category);
      if(response.isSuccessful){
        final data = NewsDto.fromJson(response.body);
        return right(data.data);
      }else{
        return left(const NewsFailure.unexpected());
      }
  }catch(e){
      return left(const NewsFailure.serverError());
    }
  }
}
