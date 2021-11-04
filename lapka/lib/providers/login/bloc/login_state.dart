part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.idle() = _Idle;

  const factory LoginState.signingIn() = _SigningIn;

  const factory LoginState.success() = _Success;

  const factory LoginState.error(NetworkExceptions exception) = _Error;
}
