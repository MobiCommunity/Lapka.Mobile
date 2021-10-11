import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/user/auth_user_store.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationRepository _repository;
  AuthUserStore _authUserStore;

  AuthenticationBloc(this._repository, this._authUserStore)
      : super(_Unauthenticated());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield AuthenticationState.unknown();
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
      // try {
      //   print('xd');
      //   String? refreshToken = await _repository.getRefreshToken();
      //   if (refreshToken == null) {
      //     yield AuthenticationState.unauthenticated();
      //   } else {
      //     Token token = await _repository.refreshToken(refreshToken);
      //     String userId = JwtDecoder.decode(token.accessToken)['unique_name'];
      //     print(userId);
      //     await _repository.putToken(token.accessToken, token.accessToken);
      //     yield AuthenticationState.authenticated(
      //         (await _repository.getToken())!);
      //   }
      // } catch (e) {
      //   yield AuthenticationState.unauthenticated();
      // }
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
    yield AuthenticationState.unauthenticated();
  }

  Stream<AuthenticationState> _handleSignUp(_SingUp event) async* {
    final ApiResult<void> result = await _repository.signUp(NewUserData(
        username: event.username,
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        password: event.password));

    result.when(
        success: (_) =>
            this.add(AuthenticationEvent.singIn(event.email, event.password)),
        failure: (NetworkExceptions error) async* {
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
    yield AuthenticationState.unauthenticated(exception: error);
  }

  Stream<AuthenticationState> _handleSuccessSignIn(Token token) async* {
    try {
      await _saveToken(token);
      // String userId = JwtDecoder.decode(token!.accessToken)['unique_name'];
      // print(userId);
      yield (AuthenticationState.authenticated(
        // (await _repository.getToken())!
        token.accessToken,
      ));
    } catch (e) {
      yield (AuthenticationState.unauthenticated(
        exception: NetworkExceptions.unexpectedError(exception: e as Exception),
      ));
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
}
