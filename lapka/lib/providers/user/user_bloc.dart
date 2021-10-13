import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/user/user_repository.dart';
import 'package:lapka/repository/user/auth_user_store.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  AuthenticationRepository _repository;
  AuthUserStore _authUserStore;
  AuthBroadcaster _authBroadcaster;
  UserRepository _userRepository;

  UserBloc(this._repository, this._authUserStore, this._authBroadcaster,
      this._userRepository)
      : super(UserState.unfetched()) {
    _init();
    _authBroadcaster.state.listen((event) {
      event.when(
        authenticated: (String userId) => add(
          _UserChanged(userId),
        ),
        unauthenticated: () => add(
          _LogOut(),
        ),
      );
    });
  }

  Future<void> _init() async {
    await checkToken();
    emit(_authUserStore.isUserStored()
        ? UserState.fetched((await _authUserStore.getUser())!)
        : UserState.unfetched());
  }

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is _UserChanged) {
      yield* _fetchUserData(event.userId);
    } else if (event is _LogOut) {
      _handleLogOut();
    }
  }

  Stream<UserState> _fetchUserData(String userId) async* {
    final response = await _userRepository.getUserData(userId);
    yield* response.when(success: (user) async* {
      _authUserStore.setUser(user!);
      yield Fetched(user);
    }, failure: (exp) async* {
      yield Unfetched();
    });
  }

  Stream<UserState> _handleLogOut() async* {
    final refreshToken = await _authUserStore.getRefreshToken();

    if (refreshToken != null) {
      await _repository.revokeRefreshToken(refreshToken);
    }
    await _authUserStore.deleteAllUserData();
    _authBroadcaster.updateState(AuthState.unauthenticated());
  }

  Future<void> checkToken() async {
    if (await _authUserStore.isTokenValid()) {
      _authBroadcaster.updateState(
          AuthState.authenticated((await _authUserStore.getUserId())!));
    }

    if (await _shouldRefreshToken()) {
      final ApiResult<Token> response = await _repository
          .refreshToken((await _authUserStore.getRefreshToken())!);

      try {
        await response.when(
            success: (token) async {
              await _authUserStore.saveToken(token!);
              _authBroadcaster.updateState(
                  AuthState.authenticated((await _authUserStore.getUserId())!));
            },
            failure: (_) async =>
                _authBroadcaster.updateState(AuthState.unauthenticated()));
      } catch (exp) {
        _authBroadcaster.updateState(AuthState.unauthenticated());
      }
    }
  }

  Future<bool> _shouldRefreshToken() async {
    if (await _authUserStore.isTokenValid()) {
      return false;
    } else if (await _authUserStore.isTokenStored() &&
        !(await _authUserStore.isTokenValid())) {
      return true;
    } else {
      return false;
    }
  }
}
