import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_request_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/sos_pagination_response_dto.dart';
import 'package:pets_next_door_flutter/features/sos/data/remote/sos_post_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/sos/repositories/sos_post_repository.dart';

final class SosPostRepositoryImpl implements SosPostRepository {
  const SosPostRepositoryImpl(
    this._sosPostRemoteDataSource,
  );

  final SosPostRemoteDataSource _sosPostRemoteDataSource;

  @override
  Future<Result<SosPostPaginationResponseDto>> getSosPosts(
      SosPostPaginationRequestDto request) async {
    try {
      final sosPostResponse =
          await _sosPostRemoteDataSource.getSosPosts(request);

      return Result.success(sosPostResponse);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
