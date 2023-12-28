part of 'news_bloc.dart';


@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loadInProgress() = _LoadInProgress;
  const factory NewsState.loadSuccess(List<NewsData> newsData) = _LoadSuccess;
  const factory NewsState.loadFailure(NewsFailure failure) = _LoadFailure;
}