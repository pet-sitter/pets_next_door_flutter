import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/providers/breeds_paging_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/pagination/infinite_paged_list.dart';

class RegisterPetDetailView extends ConsumerWidget {
  const RegisterPetDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return PNDInfinitePagedList<Breed>(
      pagingController: ref.watch(breedsPagingControllerProvider),
      itemBuilder: (context, breed, index) => Text(breed.name),
    );
  }
}
