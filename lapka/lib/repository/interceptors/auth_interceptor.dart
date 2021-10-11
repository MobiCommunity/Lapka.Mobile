import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/injector.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/providers/authentication/bloc/authentication_bloc.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_data_source_impl.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/user/auth_user_store.dart';

const TOKEN_KEY_NAME = "Authorization";

//TODO add if needed
// const API_KEY_NAME = "";
// const API_KEY = "";

@injectable
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    await checkToken();
    final _token = await getIt.get<AuthUserStore>().getToken();

    if (_token != null && _token.isNotEmpty) {
      options.queryParameters.addAll({
        TOKEN_KEY_NAME: _token,
      });
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    AuthenticationBloc _authenticationBloc = getIt.get<AuthenticationBloc>();
    if (response.statusCode == 401) {
      _authenticationBloc.add(AuthenticationEvent.logOut());
    }
  }

  Future<void> checkToken() async {
    AuthenticationRepository _authenticationRepository =
        getIt.get<AuthenticationRepository>();
    AuthUserStore _authUserStore = getIt.get<AuthUserStore>();
    AuthenticationBloc _authenticationBloc = getIt.get<AuthenticationBloc>();

    if (await _shouldRefreshToken()) {
      final ApiResult<Token> response = await _authenticationRepository
          .refreshToken((await _authUserStore.getRefreshToken())!);

      try {
        await response.when(
          success: (token) async => await _authUserStore.save(token!),
          failure: (_) async =>
              _authenticationBloc.add(AuthenticationEvent.logOut()),
        );
      } catch (exp) {
        _authenticationBloc.add(AuthenticationEvent.logOut());
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
