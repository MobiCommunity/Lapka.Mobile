part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.singIn(String name, String password) = _SingIn;
  const factory LoginEvent.singInGoogle() = _SingInGoogle;
  const factory LoginEvent.singInFb() = _SingInFb;
}