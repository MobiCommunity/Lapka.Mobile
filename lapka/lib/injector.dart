import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/injector.config.dart';
import 'package:lapka/repository/interceptors/auth_interceptor.dart';
import 'package:lapka/repository/network_configuration.dart';

import 'models/token.dart';

const _dirs = ["lib", "test"];
const _baseUrlName = "BaseUrl";

final GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: _dirs)
void initInjection(String env) => $initGetIt(getIt, environment: env);

@module
abstract class RegisterModule {
  @Named(_baseUrlName)
  String get identityBaseUrl => NetworkConfiguration.IDENTITY_BASE_URL;

  String get _identityDioBaseUrl =>
      getIt.get<String>(instanceName: _baseUrlName);

   AuthInterceptor get _authInterceptor => getIt.get<AuthInterceptor>();

  final LogInterceptor _logInterceptor = LogInterceptor(
    requestBody: true,
    responseBody: true,
  );
  //
  // final Fresh _fresh = Fresh<Token>(
  //     tokenHeader: (Token token) =>
  //     {
  //       'Authentication': token.accessToken,
  //
  //     }, tokenStorage: InMemoryTokenStorage<Token>(), refreshToken: );
  //


  @Named("Identity")
  @lazySingleton
  Dio identityDio() {
    final _dio = Dio(BaseOptions(baseUrl: _identityDioBaseUrl));
    // AuthInterceptor _authInterceptor = getIt.get<AuthInterceptor>();
    _dio.interceptors.addAll([
      _authInterceptor,
      _logInterceptor,
    ]);
    return _dio;
  }

}
