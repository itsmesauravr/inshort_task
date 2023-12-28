part of 'splash_bloc.dart';


@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loadingProgress() =  _LoadingProgress;
  const factory SplashState.loadingSuccess() = _LoadingSuccess;
  const factory SplashState.loadingFailure() = _LoadingFailure;
}