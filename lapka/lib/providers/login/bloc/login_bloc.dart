import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lapka/domain/auth/use_cases/facebook_login_use_case.dart';
import 'package:lapka/domain/auth/use_cases/google_login_use_case.dart';
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
  FacebookLoginUseCase _facebookLoginUseCase;
  GoogleLoginUseCase _googleLoginUseCase;

  LoginBloc(
    this._repository,
    this._userService,
    this._authBroadcaster,
    this._facebookLoginUseCase,
    this._googleLoginUseCase,
  ) : super(_Idle());

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
    final googleSignInResult = await _googleLoginUseCase();
    yield* googleSignInResult.when(
      success: (idToken) async* {
        final result = await _repository.singInGoogle(
          idToken!,
        );

        yield* result.when(
            success: (token) => _handleSuccessSignIn(token!),
            failure: (error) => _handleFailure(error));
      },
      failure: (error) =>
          _handleFailure(NetworkExceptions.unexpectedError(exception: error)),
    );
  }

  Stream<LoginState> _handleSignInFb(_SingInFb event) async* {
    final _facebookResult = await _facebookLoginUseCase();

    yield* _facebookResult.when(
      success: (token) async* {
        final result = await _repository.singInFb(
          token!,
        );

        yield* result.when(
            success: (token) => _handleSuccessSignIn(token!),
            failure: (error) => _handleFailure(error));
      },
      failure: (error) =>
          _handleFailure(NetworkExceptions.unexpectedError(exception: error)),
    );
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
      await _saveToken(token);
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
