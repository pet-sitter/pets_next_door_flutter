import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/app.dart';
import 'package:pets_next_door_flutter/app/env/flavors.dart';

Future<void> main() async {
  Flavor.initialize(BuildType.production);

  await Flavor.instance.setup();

  runApp(const ProviderScope(child: App()));
}
