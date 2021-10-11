part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.singIn(String name, String password) = _SingIn;
  const factory AuthenticationEvent.singInGoogle(String accessToken) = _SingInGoogle;
  const factory AuthenticationEvent.singInFb(String accessToken) = _SingInFb;
  const factory AuthenticationEvent.signUp(String username, String firstName, String lastName, String email, String password) = _SingUp;
  const factory AuthenticationEvent.logOut() = _LogOut;
}