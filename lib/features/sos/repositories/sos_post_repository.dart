import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_request_dto.dart';
import 'package:pets_next_door_flutter/features/sos/entities/sos_post_entity.dart';

abstract interface class SosPostRepository {
  Future<Result<List<SosPostEntity>>> getSosPosts(
      SosPostPaginationRequestDto request);
}
