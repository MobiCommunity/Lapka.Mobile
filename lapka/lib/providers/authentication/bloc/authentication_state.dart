part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unauthenticated({NetworkExceptions? exception}) = _Unauthenticated;
  const factory AuthenticationState.authenticated(String token) = _Authenticated;
  const factory AuthenticationState.unknown() = _Unknown;
}
