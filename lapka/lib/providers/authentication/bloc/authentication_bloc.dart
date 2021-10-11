import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lapka/injector.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/providers/my_pets/bloc/my_pets_bloc.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/user/auth_user_store.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationRepository _repository;
  AuthUserStore _authUserStore;
  AuthBroadcaster _authBroadcaster;

  AuthenticationBloc(
      this._repository, this._authUserStore, this._authBroadcaster)
      : super(_Idle()) {
    checkToken();
  }

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield _Processing();
    if (event is _SingIn) {
      yield* _handleSingIn(event);
    } else if (event is _SingInFb) {
      yield* _handleSignInFb(event);
    } else if (event is _SingInGoogle) {
      yield* _handleSignInGoogle(event);
    } else if (event is _SingUp) {
      yield* _handleSignUp(event);
    } else if (event is _LogOut) {
      yield* _handleLogOut();
    } else if (event is _AutoLogin) {
    }
  }

  Stream<AuthenticationState> _handleLogOut() async* {
    await _authUserStore.deleteAllUserData();
    final refreshToken = await _authUserStore.getRefreshToken();
    if (refreshToken != null) {
      final ApiResult<void> result =
          await _repository.revokeRefreshToken(refreshToken);
      //TODO
      result.when(success: (_) {}, failure: (_) {});
    }
    _authBroadcaster.updateState(AuthState.unauthenticated());
  }

  Stream<AuthenticationState> _handleSignUp(_SingUp event) async* {
    final ApiResult<void> result = await _repository.signUp(
      NewUserData(
        username: event.username,
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        password: event.password,
      ),
    );

    yield* result.when(success: (_) async* {
      this.add(AuthenticationEvent.singIn(event.email, event.password));
      yield _Success();
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<AuthenticationState> _handleSignInGoogle(_SingInGoogle event) async* {
    ApiResult<Token> tokenResult =
        await _repository.singInGoogle(event.accessToken);

    yield* tokenResult.when(success: (token) async* {
      yield* _handleSuccessSignIn(token!);
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<AuthenticationState> _handleSignInFb(_SingInFb event) async* {
    ApiResult<Token> tokenResult =
        await _repository.singInFb(event.accessToken);

    yield* tokenResult.when(success: (token) async* {
      yield* _handleSuccessSignIn(token!);
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<AuthenticationState> _handleSingIn(_SingIn event) async* {
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

  Stream<AuthenticationState> _handleFailure(NetworkExceptions error) async* {
    yield _Error(error);
  }

  Stream<AuthenticationState> _handleSuccessSignIn(Token token) async* {
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

  Future<void> _saveToken(Token token) async {
    _authUserStore.save(
        // token.accessToken,
        // token.refreshToken,
        // token.expires,
        token);
  }

// Future<void> checkToken() async {
//   if (await _authUserStore.isTokenValid()) {
//     return;
//   }
//
//   if (await _authUserStore.isTokenStored() &&
//       !(await _authUserStore.isTokenValid())) {
//     final ApiResult<Token> response = await _repository
//         .refreshToken((await _authUserStore.getRefreshToken())!);
//
//     try {
//       response.when(
//         success: (token) => _saveToken(token!),
//         failure: (_) async => await _authUserStore.deleteAllUserData(),
//       );
//     } catch (exp) {
//       await _authUserStore.deleteAllUserData();
//     }
//   }
// }

  Future<void> checkToken() async {
    if (await _shouldRefreshToken()) {
      final ApiResult<Token> response = await _repository
          .refreshToken((await _authUserStore.getRefreshToken())!);

      try {
        await response.when(
          success: (token) async => await _authUserStore.save(token!),
          failure: (_) async => this.add(AuthenticationEvent.logOut()),
        );
      } catch (exp) {
        this..add(AuthenticationEvent.logOut());
      }
    }
  }

  Future<bool> _shouldRefreshToken() async {
    AuthUserStore _authUserStore = getIt.get<AuthUserStore>();
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
