import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/features/sos/api/sos_post_api.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_request_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_response_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/remote/sos_post_remote_data_source.dart';

final class SosPostRemoteDataSourceImpl implements SosPostRemoteDataSource {
  final SosPostAPI _sosPostAPI = SosPostAPI(
    AppDio.instance,
    baseUrl: Flavor.apiUrl,
  );

  @override
  Future<SosPostPaginationResponseDto> getSosPosts(
      SosPostPaginationRequestDto request) {
    return _sosPostAPI.getSosPosts(request);
  }
}
