import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pets_next_door_flutter/api/pet_api.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';
import 'package:pets_next_door_flutter/core/utils/dio_provider.dart';
import 'package:pets_next_door_flutter/features/auth/data/api_exceptions.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pagination_response.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_repository.g.dart';

/// Weather Repository using the http client. Calls API methods and parses responses.
class PetRepository {
  PetRepository({required this.api, required this.client});
  final PNDPetAPI api;
  final Dio client;

  Future<List<Breed>> getBreeds({
    required int page,
    required int size,
    required PetType petType,
  }) =>
      _getData(
        uri: api.breeds(page: page, size: size, petType: petType.code),
        builder: (data) => PaginationResponse<Breed>.fromJson(
          json as Map<String, dynamic>,
          (data) => Breed.fromJson(data as Map<String, dynamic>),
        ),
      ).then((value) => value.items);

  Future<T> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.getUri<T>(uri);
      switch (response.statusCode) {
        case 200:
          final data = response.data;
          return builder(data);
        case 401:
          throw InvalidApiKeyException();
        case 404:
          throw CityNotFoundException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}

final petRepositoryProvider = Provider<PetRepository>((ref) {
  // const apiKey = String.fromEnvironment(
  //   'API_KEY',
  // );

  const apiBaseUrl = 'pets-next-door.fly.dev';

  return PetRepository(
    api: PNDPetAPI(apiBaseUrl),
    client: ref.read(dioProvider),
  );
});

/// Provider to fetch paginated movies data
@riverpod
Future<List<Breed>> fetchBreeds(
  FetchBreedsRef ref, {
  required BreedsPaginationRequest paginationRequest,
}) async {
  final petRepo = ref.watch(petRepositoryProvider);
  // See this for how the timeout is implemented:
  // https://codewithandrea.com/articles/flutter-riverpod-data-caching-providers-lifecycle/#caching-with-timeout
  // Cancel the page request if the UI no longer needs it.
  // This happens if the user scrolls very fast or if we type a different search
  // term.
  final cancelToken = CancelToken();
  // When a page is no-longer used, keep it in the cache.
  final link = ref.keepAlive();
  // a timer to be used by the callbacks below
  Timer? timer;
  // When the provider is destroyed, cancel the http request and the timer
  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });
  // When the last listener is removed, start a timer to dispose the cached data
  ref.onCancel(() {
    // start a 30 second timer
    timer = Timer(const Duration(seconds: 30), () {
      // dispose on timeout
      link.close();
    });
  });
  // If the provider is listened again after it was paused, cancel the timer
  ref.onResume(() {
    timer?.cancel();
  });

  // Debounce the request. By having this delay, consumers can subscribe to
  // different parameters. In which case, this request will be aborted.
  await Future.delayed(const Duration(milliseconds: 500));
  // if (cancelToken.isCancelled) throw AbortedException();
  // use search endpoint
  return petRepo.getBreeds(
    page: paginationRequest.page,
    size: paginationRequest.size,
    petType: paginationRequest.petType,
  );
}
