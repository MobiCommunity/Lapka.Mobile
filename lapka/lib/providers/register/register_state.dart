part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.idle() = _Idle;

  const factory RegisterState.signingUp() = _SigningUp;

  const factory RegisterState.success() = _Success;

  const factory RegisterState.error(NetworkExceptions exception) = _Error;
}

