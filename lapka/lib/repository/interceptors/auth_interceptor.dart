import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const TOKEN_KEY_NAME = "token";

const API_KEY_NAME = "key";
const API_KEY = "db83485ba85b72c3f3cf247a34b84395";

@injectable
class AuthInterceptor extends Interceptor {
  // final GetAuthTokenUseCase _getAuthTokenUseCase;
  //
  // AuthInterceptor(this._getAuthTokenUseCase);
  //
  // @override
  // Future onRequest(RequestOptions options) async {
  //   final _token = _getAuthTokenUseCase();
  //
  //   if (_token != null && _token.isNotEmpty) {
  //     options.queryParameters.addAll({
  //       TOKEN_KEY_NAME: _token,
  //     });
  //   }
  //
  //   options.queryParameters.addAll({
  //     API_KEY_NAME: API_KEY,
  //   });
  //
  //   return options;
  // }
}
