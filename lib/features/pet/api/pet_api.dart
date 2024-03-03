import 'package:dio/dio.dart' hide Headers;
import 'package:pets_next_door_flutter/features/pet/data/dto/pet_data_dto.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_response.dart';
import 'package:retrofit/http.dart';

part 'pet_api.g.dart';

@RestApi()
abstract class PetAPI {
  factory PetAPI(Dio dio, {String baseUrl}) = _PetAPI;

  @GET("/breeds")
  @Headers({"requiresToken": false})
  Future<BreedsPaginationResponse> getBreed(
    @Queries() BreedsPaginationRequest breedsPaginationRequest,
  );

  @GET("/users/me/pets")
  @Headers({"requiresToken": true})
  Future<PetDataListDto> getMyPets();
}
