part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.fetched(User user) = Fetched;

  const factory UserState.unfetched() = Unfetched;
}
