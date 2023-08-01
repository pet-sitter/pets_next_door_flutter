import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/app.dart';
import 'package:pets_next_door_flutter/env/flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.development;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(name: F.name, options: F.firebaseOptions);
  runApp(const ProviderScope(child: App()));
}
