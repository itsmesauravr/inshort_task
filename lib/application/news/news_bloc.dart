import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inshort_task/domain/news/i_news_repository.dart';
import 'package:inshort_task/domain/news/news_failiure.dart';
import 'package:inshort_task/infrastructure/news/news_dto.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final INewsRepository _newsRepository;
  NewsBloc(this._newsRepository) : super(const NewsState.initial()) {
    on<_GetNews>((event, emit) => _getNewsToState(event, emit));
  }

  Future _getNewsToState(_GetNews event, Emitter<NewsState> emit) async {
    Either<NewsFailure, List<NewsData>> failureOrSuccess;
    emit(const NewsState.loadInProgress());
    failureOrSuccess = await _newsRepository.getNews(event.category);
    failureOrSuccess.fold(
      (failure) => emit(NewsState.loadFailure(failure)),
      (success) => emit(NewsState.loadSuccess(success)),
    );
  }
}
