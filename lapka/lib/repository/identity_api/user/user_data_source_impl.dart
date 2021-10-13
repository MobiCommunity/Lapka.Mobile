import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/identity_api/user/user_data_source.dart';
import 'package:retrofit/retrofit.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_data_source.dart';

part 'user_data_source_impl.g.dart';

@RestApi()
@Injectable(as: UserDataSource)
abstract class UserDataSourceImpl extends UserDataSource {
  @factoryMethod
  factory UserDataSourceImpl(@Named("Identity") Dio dio) = _UserDataSourceImpl;

  @override
  @GET('/user/{id}')
  Future<User> getUserData(@Path() String id);
}
