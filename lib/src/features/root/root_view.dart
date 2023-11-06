import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/src/routing/scaffold_with_nested_navigation.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBottomNavBar(
      body: SafeArea(
        child: SizedBox.shrink(),
      ),
      currentIndex: 0,
      onDestinationSelected: (int value) {},
    );
  }
}
