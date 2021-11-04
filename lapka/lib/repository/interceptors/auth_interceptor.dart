import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/domain/auth/use_case/logout_use_case.dart';
import 'package:lapka/injector.dart';
import 'package:lapka/services/auth_service.dart';
import 'package:lapka/services/user_service.dart';

const TOKEN_KEY_NAME = "Authorization";

//TODO add if needed
// const API_KEY_NAME = "";
// const API_KEY = "";

@injectable
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    getIt.get<AuthService>().checkToken();
    final _token = await getIt.get<UserService>().getToken();

    if (_token != null && _token.isNotEmpty) {
      options.queryParameters.addAll({
        TOKEN_KEY_NAME: _token,
      });
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
      getIt.get<LogoutUseCase>().call();
      // getIt.get<UserBloc>().add(UserEvent.logOut());
    }
    handler.next(response);
  }
}
