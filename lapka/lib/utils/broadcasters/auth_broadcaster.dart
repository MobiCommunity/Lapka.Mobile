import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'auth_broadcaster.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = Authenticated;

  const factory AuthState.unauthenticated() = Unauthenticated;
}

@lazySingleton
class AuthBroadcaster {
  final BehaviorSubject<AuthState> _broadcaster =
      BehaviorSubject.seeded(AuthState.unauthenticated());

  Stream<AuthState> get state => _broadcaster.stream;
  AuthState get currentState => _broadcaster.value;

  void updateState(AuthState newState) {
    _broadcaster.add(newState);
  }
}
