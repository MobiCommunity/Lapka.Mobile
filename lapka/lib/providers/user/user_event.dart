part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.logOut() = _LogOut;
  const factory UserEvent.userChanged(String userId) = _UserChanged;
}
