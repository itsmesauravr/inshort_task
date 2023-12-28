part of 'auth_bloc.dart';


@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory AuthEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
  const factory AuthEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;
}
