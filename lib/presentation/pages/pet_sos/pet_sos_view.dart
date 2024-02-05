import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/pet_sos_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/providers/pet_sos_filter_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/radio_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/dropdown/dropdown_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/dropdown/dropdown_item.dart';
import 'package:pets_next_door_flutter/presentation/widgets/list_tile/post_list_tile.dart';

part 'layouts/pet_filter.dart';
part 'layouts/pet_sos_list_view.dart';
part 'layouts/sort_filter.dart';

class PetSosView extends StatelessWidget {
  const PetSosView({
    super.key,
    this.onScrollDirectionChanged,
  });

  final void Function(ScrollDirection)? onScrollDirectionChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPetSosFilterGroup(),
        _PetSosListView(
          onScrollDirectionChanged: onScrollDirectionChanged,
        )
      ],
    );
  }

  Padding _buildPetSosFilterGroup() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _PetSosSortFilter(),
          _PetSosPetFilter(),
        ],
      ),
    );
  }
}
