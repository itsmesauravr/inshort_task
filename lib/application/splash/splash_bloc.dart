import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inshort_task/domain/core/di/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<_GetSplash>((event, emit) => _onGetSplash(event, emit));
  }

  _onGetSplash(_GetSplash? event, Emitter<SplashState> emit) async {
    final prefs = getIt<SharedPreferences>();
    emit(const SplashState.loadingProgress());
    await Future.delayed(const Duration(seconds: 2));
    final isLogin = prefs.getBool('isLogin');
    if(isLogin == null || !isLogin) {
      emit(const SplashState.loadingFailure());
    }else{
      emit(const SplashState.loadingSuccess());
    }
  }
}
