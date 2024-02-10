import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/helper/date_time_extension.dart';
import 'package:pets_next_door_flutter/features/sos/entities/sos_post_entity.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/providers/sos_post_filter_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/providers/sos_post_paging_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/sos_post_event.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/radio_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/dropdown/dropdown_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/dropdown/dropdown_item.dart';
import 'package:pets_next_door_flutter/presentation/widgets/indicator/loading_indicator.dart';
import 'package:pets_next_door_flutter/presentation/widgets/list_tile/post_list_tile.dart';

part 'layouts/pet_filter.dart';
part 'layouts/sort_filter.dart';
part 'layouts/sos_post_list_view.dart';

class SosPostView extends StatelessWidget {
  const SosPostView({
    super.key,
    this.onScrollDirectionChanged,
  });

  final void Function(ScrollDirection)? onScrollDirectionChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFilters(),
        _buildListView(),
      ],
    );
  }

  Padding _buildFilters() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _SosSortFilter(),
          _SosPetFilter(),
        ],
      ),
    );
  }

  Expanded _buildListView() {
    return Expanded(
      child: _SosPostListView(
        onScrollDirectionChanged: onScrollDirectionChanged,
      ),
    );
  }
}
