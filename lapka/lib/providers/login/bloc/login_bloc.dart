import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/user/auth_user_store.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthenticationRepository _repository;
  AuthUserStore _authUserStore;
  AuthBroadcaster _authBroadcaster;

  LoginBloc(this._repository, this._authUserStore, this._authBroadcaster)
      : super(_Idle()) {
    checkToken();
  }

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield _SigningIn();
    if (event is _SingIn) {
      yield* _handleSingIn(event);
    } else if (event is _SingInFb) {
      yield* _handleSignInFb(event);
    } else if (event is _SingInGoogle) {
      yield* _handleSignInGoogle(event);
    } else if (event is _LogOut) {
      yield* _handleLogOut();
    }
  }

  Stream<LoginState> _handleSignInGoogle(_SingInGoogle event) async* {
    ApiResult<Token> tokenResult =
        await _repository.singInGoogle(event.accessToken);

    yield* tokenResult.when(success: (token) async* {
      yield* _handleSuccessSignIn(token!);
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<LoginState> _handleSignInFb(_SingInFb event) async* {
    ApiResult<Token> tokenResult =
        await _repository.singInFb(event.accessToken);

    yield* tokenResult.when(success: (token) async* {
      yield* _handleSuccessSignIn(token!);
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<LoginState> _handleSingIn(_SingIn event) async* {
    ApiResult<Token> tokenResult =
        await _repository.singIn(event.name, event.password);

    yield* tokenResult.when(
      success: (token) async* {
        yield* _handleSuccessSignIn(token!);
      },
      failure: (NetworkExceptions error) async* {
        yield* _handleFailure(error);
      },
    );
  }

  Stream<LoginState> _handleSuccessSignIn(Token token) async* {
    try {
      await _saveToken(token);
      // String userId = JwtDecoder.decode(token!.accessToken)['unique_name'];
      // print(userId);
      yield _Success();
      _authBroadcaster.updateState(AuthState.authenticated());
    } catch (e) {
      yield _Error(
          NetworkExceptions.unexpectedError(exception: e as Exception));
      _authBroadcaster.updateState(AuthState.unauthenticated());
    }
  }

  Stream<LoginState> _handleLogOut() async* {
    final refreshToken = await _authUserStore.getRefreshToken();

    if (refreshToken != null) {
      final ApiResult<void> result =
          await _repository.revokeRefreshToken(refreshToken);
      //TODO if needed
      result.when(success: (_) {}, failure: (_) {});
    }
    await _authUserStore.deleteAllUserData();
    _authBroadcaster.updateState(AuthState.unauthenticated());
  }

  Future<void> _saveToken(Token token) async {
    await _authUserStore.save(
      token,
    );
  }

  Stream<LoginState> _handleFailure(NetworkExceptions error) async* {
    yield _Error(error);
  }

  Future<void> checkToken() async {
    if (await _authUserStore.isTokenValid()) {
      _authBroadcaster.updateState(AuthState.authenticated());
    }

    if (await _shouldRefreshToken()) {
      final ApiResult<Token> response = await _repository
          .refreshToken((await _authUserStore.getRefreshToken())!);

      try {
        await response.when(
          success: (token) async {
            await _authUserStore.save(token!);
            _authBroadcaster.updateState(AuthState.authenticated());
          },
          failure: (_) async => this.add(LoginEvent.logOut()),
        );
      } catch (exp) {
        this.add(LoginEvent.logOut());
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
