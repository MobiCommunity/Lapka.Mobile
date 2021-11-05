import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/pets_api/pets_data_source.dart';
import 'package:retrofit/retrofit.dart';

part 'pets_data_source_impl.g.dart';

@RestApi()
@Injectable(as: PetsDataSource)
abstract class PetsDataSourceImpl extends PetsDataSource {
  @factoryMethod
  factory PetsDataSourceImpl(@Named("Pets") Dio dio) = _PetsDataSourceImpl;

  @GET('/shelter/pet')
    @Headers(<String, dynamic>{
    "requiresToken": true,
  })
  Future<List<Pet>> getPets(
    @Query('name') String? petName,
    @Query('race') String? race,
    @Query('latitude') String? lat,
    @Query('longitude') String? lng,
  );

  @GET('/shelter/pet{id}')
    @Headers(<String, dynamic>{
    "requiresToken": true,
  })
  Future<Pet> getPetDetails(@Path() String id);

  @PATCH('/shelter/pet{id}/like')
    @Headers(<String, dynamic>{
    "requiresToken": true,
  })
  Future<void> likePet(@Path() String id);

  @PATCH('/shelter/pet{id}/dislike')
    @Headers(<String, dynamic>{
    "requiresToken": true,
  })
  Future<void> dislikePet(@Path() String id);

  @PATCH('/shelter/pet/like')
    @Headers(<String, dynamic>{
    "requiresToken": true,
  })
  Future<List<Pet>> getAllLikedPets();
}
