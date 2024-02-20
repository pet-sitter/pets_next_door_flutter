import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_request_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_response_dto.dart';
import 'package:pets_next_door_flutter/features/sos/repositories/sos_post_repository.dart';

final class GetSosPostsUseCase {
  const GetSosPostsUseCase({
    required SosPostRepository sosPostRepository,
  }) : _sosPostRepository = sosPostRepository;

  final SosPostRepository _sosPostRepository;

  Future<Result<SosPostPaginationResponseDto>> call({
    required int size,
    required int page,
    required SortTypeFilter sortType,
  }) async {
    return _sosPostRepository.getSosPosts(
      SosPostPaginationRequestDto(
        page: page,
        size: size,
        sortType: sortType,
      ),
    );
  }
}
