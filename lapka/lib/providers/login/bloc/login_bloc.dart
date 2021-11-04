import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/services/user_service.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthenticationRepository _repository;
  UserService _userService;
  AuthBroadcaster _authBroadcaster;

  LoginBloc(this._repository, this._userService, this._authBroadcaster)
      : super(_Idle());

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
    }
  }

  Stream<LoginState> _handleSignInGoogle(_SingInGoogle event) async* {
    Result<Token,NetworkExceptions> tokenResult =
        await _repository.singInGoogle(event.accessToken);

    yield* tokenResult.when(success: (token) async* {
      yield* _handleSuccessSignIn(token!);
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<LoginState> _handleSignInFb(_SingInFb event) async* {
    Result<Token,NetworkExceptions> tokenResult =
        await _repository.singInFb(event.accessToken);

    yield* tokenResult.when(success: (token) async* {
      yield* _handleSuccessSignIn(token!);
    }, failure: (NetworkExceptions error) async* {
      yield* _handleFailure(error);
    });
  }

  Stream<LoginState> _handleSingIn(_SingIn event) async* {
    Result<Token, NetworkExceptions> tokenResult =
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
      print('saveToken');
      await _saveToken(token);
            print('saved');

      yield _Success();
      _authBroadcaster.updateState(AuthState.authenticated());
    } catch (e) {
      yield _Error(
          NetworkExceptions.unexpectedError(exception: e as Exception));
    }
  }

  Future<void> _saveToken(Token token) async {
    await _userService.saveToken(
      token,
    );
  }

  Stream<LoginState> _handleFailure(NetworkExceptions error) async* {
    yield _Error(error);
  }
}
