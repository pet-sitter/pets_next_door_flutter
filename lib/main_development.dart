import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/app.dart';
import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/logger/provider_logger.dart';

Future<void> main() async {
  Flavor.initialize(BuildType.development);

  await Flavor.instance.setup();

  runApp(ProviderScope(observers: [ProviderLogger()], child: App()));
}
