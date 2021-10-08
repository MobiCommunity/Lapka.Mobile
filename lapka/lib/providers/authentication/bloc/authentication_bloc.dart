import 'package:bloc/bloc.dart';
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

@injectable
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
    if (event is _SingIn) {
      ApiResult<Token> tokenResult =
          await _repository.singIn(event.name, event.password);

      tokenResult.when(
        success: (token) async* {
          _handleSuccessSignIn(token);
        },
        failure: (NetworkExceptions error) async* {
          _handleFailure(error);
        },
      );
    } else if (event is _SingInFb) {
      ApiResult<Token> tokenResult =
          await _repository.singInFb(event.accessToken);

      tokenResult.when(success: (token) async* {
        _handleSuccessSignIn(token);
      }, failure: (NetworkExceptions error) async* {
        _handleFailure(error);
      });
    } else if (event is _SingInGoogle) {
      ApiResult<Token> tokenResult =
          await _repository.singInGoogle(event.accessToken);

      tokenResult.when(success: (token) async* {
        _handleSuccessSignIn(token);
      }, failure: (NetworkExceptions error) async* {
        _handleFailure(error);
      });
    } else if (event is _SingUp) {
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
            _handleFailure(error);
          });
    } else if (event is _LogOut) {
      await _authUserStore.deleteAllUserData();
      final refreshToken = await _authUserStore.getRefreshToken();
      if(refreshToken != null){
        final ApiResult<void> result = await _repository.revokeRefreshToken(refreshToken);
        //TODO
        result.when(success: (_){}, failure: (_){});

      }
      yield AuthenticationState.unauthenticated();

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

  Stream<AuthenticationState> _handleFailure(NetworkExceptions error) async* {
    yield (AuthenticationState.unauthenticated(exception: error));
  }

  Stream<AuthenticationState> _handleSuccessSignIn(Token? token) async* {
    try {
      _authUserStore.save(
        token!.accessToken,
        token.refreshToken,
        token.expires,
      );
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
}
