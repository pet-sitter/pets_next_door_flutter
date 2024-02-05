import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/images.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/home_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/current_tab_type_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/pet_mate_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/sos_post_view.dart';
import 'package:pets_next_door_flutter/presentation/widgets/search_bar/animated_search_bar.dart';

part 'widgets/home_location_button.dart';
part 'widgets/home_search_bar.dart';
part 'widgets/home_tab_view_body.dart';

enum HomeTabType {
  petSos('돌봄급구'),
  petMate('돌봄메이트');

  const HomeTabType(this.label);

  final String label;
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _HomeLocationButton(),
            const _HomeTabViewBody(),
          ],
        ),
      ),
    );
  }
}
