part of 'navigator_bloc.dart';

@freezed
class NavigatorMyState with _$NavigatorMyState {
  const factory NavigatorMyState.initial() = _Initial;
  const factory NavigatorMyState.push(MaterialPage page) = _Push;
  const factory NavigatorMyState.pushReplace(MaterialPage page) = _PushReplace;
  const factory NavigatorMyState.pop(
    bool force,
  ) = _Pop;
}
