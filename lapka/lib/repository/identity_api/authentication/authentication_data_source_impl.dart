import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:retrofit/retrofit.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_data_source.dart';

part 'authentication_data_source_impl.g.dart';

@RestApi()
@Injectable(as: AuthenticationDataSource)
abstract class AuthenticationDataSourceImpl extends AuthenticationDataSource {
  @factoryMethod
  factory AuthenticationDataSourceImpl(@Named("Identity") Dio dio) =
      _AuthenticationDataSourceImpl;

  @override
  @POST('/auth/signin')
  Future<Token> singIn(@Field() String email, @Field() String password);

  @override
  @POST('/auth/signup')
  Future<void> signUp(@Body() NewUserData newUser);

  @override
  @POST('/auth/use')
  Future<Token> refreshToken(@Field('token') String refreshToken);

  @override
  @POST('/auth/revoke')
  Future<void> revokeRefreshToken(@Field('token') String refreshToken);

  @override
  @POST('/auth/signin-google')
  Future<Token> singInGoogle(@Field('token') String token);

  @override
  @POST('/auth/signin-facebook')
  Future<Token> singInFb(@Field('token') String token);
}
