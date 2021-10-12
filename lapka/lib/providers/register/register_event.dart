part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.signUp(String username, String firstName,
      String lastName, String email, String password) = _SingUp;
}
