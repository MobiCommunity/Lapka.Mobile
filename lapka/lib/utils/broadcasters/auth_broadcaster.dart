import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'auth_broadcaster.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;
}

@lazySingleton
class AuthBroadcaster {
  final BehaviorSubject<AuthState> _broadcaster =
      BehaviorSubject.seeded(AuthState.unauthenticated());

  Stream<AuthState> get state => _broadcaster.stream;

  void updateState(AuthState newState) {
    _broadcaster.add(newState);
  }
}
