part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.idle() = _Idle;
  const factory AuthenticationState.processing() = _Processing;
  const factory AuthenticationState.success() = _Success;
  const factory AuthenticationState.error(NetworkExceptions exception) = _Error;



  // const factory AuthenticationState.unauthenticated({NetworkExceptions? exception}) = _Unauthenticated;
  // const factory AuthenticationState.authenticated(String token) = _Authenticated;
  // const factory AuthenticationState.unknown() = _Unknown;
}
