import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inshort_task/domain/auth/auth_failure.dart';
import 'package:inshort_task/domain/auth/value_objects.dart';
import 'package:inshort_task/domain/core/di/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_EmailChanged>((event, emit) => _onEmailChanged(event, emit));
    on<_PasswordChanged>((event, emit) => _onPasswordChanged(event, emit));
    on<_SignInWithEmailAndPasswordPressed>(
        (event, emit) => _onSignInWithEmailAndPasswordPressed(event, emit));
  }

  _onEmailChanged(_EmailChanged event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      email: Email(event.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  _onPasswordChanged(_PasswordChanged event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      password: Password(event.passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  _onSignInWithEmailAndPasswordPressed(
      _SignInWithEmailAndPasswordPressed event, Emitter<AuthState> emit) async {
    final prefs = getIt<SharedPreferences>();
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      failureOrSuccess = await Future.delayed(
        const Duration(seconds: 1),
        () => right(unit),
      );
      await prefs.setBool('isLogin', true);
      await prefs.setString('email', state.email.getOrCrash());
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    } else {
      failureOrSuccess =
          left(const AuthFailure.invalidEmailAndPasswordCombination());
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    }
  }
}
