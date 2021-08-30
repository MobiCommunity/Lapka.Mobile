part of 'navigator_bloc.dart';

@freezed
class NavigatorEvent with _$NavigatorEvent {
  const factory NavigatorEvent.pushPage(Widget page) = _PushPage;
  const factory NavigatorEvent.popPage(bool force) = _PopPage;
  const factory NavigatorEvent.pushReplace(Widget page) = _PushReplacePage;

}