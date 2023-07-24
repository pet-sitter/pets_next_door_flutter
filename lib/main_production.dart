import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/app.dart';
import 'package:pets_next_door_flutter/flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.production;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: F.firebaseOptions);
  runApp(const App());
}
