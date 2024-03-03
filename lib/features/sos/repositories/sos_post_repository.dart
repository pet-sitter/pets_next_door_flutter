import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_request_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_response_dto.dart';

abstract interface class SosPostRepository {
  Future<Result<SosPostPaginationResponseDto>> getSosPosts(
      SosPostPaginationRequestDto request);
}
