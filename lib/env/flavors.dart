import 'package:firebase_core/firebase_core.dart';
import 'package:pets_next_door_flutter/env/firebase_options_dev.dart' as dev;
import 'package:pets_next_door_flutter/env/firebase_options_prod.dart' as prod;

enum Flavor {
  development,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Development App';
      case Flavor.production:
        return 'Production App';
      default:
        return 'title';
    }
  }

  static FirebaseOptions get firebaseOptions {
    switch (appFlavor) {
      case Flavor.development:
        return dev.DefaultFirebaseOptions.currentPlatform;
      case Flavor.production:
        return prod.DefaultFirebaseOptions.currentPlatform;
      default:
        return prod.DefaultFirebaseOptions.currentPlatform;
    }
  }

  static String get apiUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://pets-next-door-api-dev.onrender.com/';
      case Flavor.production:
        return 'https://pets-next-door-api-dev.onrender.com/';
      default:
        return 'https://pets-next-door-api-dev.onrender.com/';
    }
  }
}
