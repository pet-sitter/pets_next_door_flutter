import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:http_parser/http_parser.dart' as http;
import 'package:pets_next_door_flutter/core/enums/media_type.enum.dart';
import 'package:pets_next_door_flutter/features/media/data/dto/media_image_dto.dart';

abstract class MediaAPI {
  factory MediaAPI(Dio dio, {String baseUrl}) = _MediaAPI;

  Future<MediaImageDto> uploadImage(File file, String imageFormat);
  Future<MediaImageDto> getImage(int imageId);
}

class _MediaAPI implements MediaAPI {
  _MediaAPI(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MediaImageDto> getImage(int imageId) {
    // TODO: implement getImage
    throw UnimplementedError();
  }

  @override
  Future<MediaImageDto> uploadImage(File file, String imageFormat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'requiresToken': false};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.files.add(MapEntry(
      'file',
      MultipartFile.fromFileSync(
        file.path,
        filename: file.path.split(Platform.pathSeparator).last,
        contentType:
            http.MediaType.parse('${AppMediaType.image.name}/$imageFormat'),
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<MediaImageDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/media/images',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MediaImageDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
