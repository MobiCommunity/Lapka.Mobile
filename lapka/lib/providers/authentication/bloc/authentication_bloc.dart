import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/authentication_repository.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationRepository _repository;
  AuthenticationBloc(this._repository) : super(_Unauthenticated());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is _SingIn) {
      try {
        Token token = await _repository.singIn(event.name, event.password);
        _repository.putToken(token.accessToken, token.refreshToken);
        String userId = JwtDecoder.decode(token.accessToken)['unique_name'];
          print(userId);
        yield (AuthenticationState.authenticated(
            (await _repository.getToken())!));
      } catch (e) {
        yield (AuthenticationState.unauthenticated());
      }
    } else if (event is _SingInFb) {
      try {
        Token token = await _repository.singInFb(event.accessToken);
        _repository.putToken(token.accessToken, token.refreshToken);
        String userId = JwtDecoder.decode(token.accessToken)['unique_name'];
          print(userId);
        yield (AuthenticationState.authenticated(
            (await _repository.getToken())!));
      } catch (e) {
        yield (AuthenticationState.unauthenticated());
      }
    } else if (event is _SingInGoogle) {
      try {
        Token token = await _repository.singInGoogle(event.accessToken);
        _repository.putToken(token.accessToken, token.refreshToken);
        String userId = JwtDecoder.decode(token.accessToken)['unique_name'];
          print(userId);
        yield (AuthenticationState.authenticated(
            (await _repository.getToken())!));
      } catch (e) {
        yield (AuthenticationState.unauthenticated());
      }
    } else if (event is _SingUp) {
      try {
        await _repository.signUp(event.username, event.firstName,
            event.lastName, event.email, event.password);
        this.add(AuthenticationEvent.singIn(event.email, event.password));
      } catch (e) {
        yield (AuthenticationState.unauthenticated());
      }
    } else if (event is _LogOut) {
      await _repository.deleteToken();
      await _repository
          .revokeRefreshToken((await _repository.getRefreshToken())!);
      yield AuthenticationState.unauthenticated();
    } else if (event is _AutoLogin) {
      try {
        print('xd');
        String? refreshToken = await _repository.getRefreshToken();
        if (refreshToken == null) {
          yield AuthenticationState.unauthenticated();
        } else {
          Token token = await _repository.refreshToken(refreshToken);
          String userId = JwtDecoder.decode(token.accessToken)['unique_name'];
          print(userId);
          await _repository.putToken(token.accessToken, token.accessToken);
          yield AuthenticationState.authenticated(
              (await _repository.getToken())!);
        }
      } catch (e) {
        yield AuthenticationState.unauthenticated();
      }
    }
  }
}
