import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_failiure.freezed.dart';

@freezed
class NewsFailure with _$NewsFailure {
  const factory NewsFailure.unexpected() = _Unexpected;
  const factory NewsFailure.serverError() = _ServerError;
  const factory NewsFailure.noInternet() = _NoInternet;
}
