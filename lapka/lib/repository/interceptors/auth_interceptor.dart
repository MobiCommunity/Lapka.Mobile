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
    await getIt.get<AuthenticationBloc>().checkToken();
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
}
