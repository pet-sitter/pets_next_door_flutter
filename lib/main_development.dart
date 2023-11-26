import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_auth/kakao_flutter_sdk_auth.dart';
import 'package:pets_next_door_flutter/app.dart';
import 'package:pets_next_door_flutter/app/env/flavors.dart';

const String NATIVE_APP_KEY = 'c731277fe79636328bb7e45a3ffa2b57';

const String JAVASCRIPT_APP_KEY = '22998cc0859ed055160fbdeb4a1d50d8';

Future<void> main() async {
  F.appFlavor = Flavor.development;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(name: F.name, options: F.firebaseOptions);

  KakaoSdk.init(
    nativeAppKey: NATIVE_APP_KEY,
    javaScriptAppKey: JAVASCRIPT_APP_KEY,
  );

  runApp(const ProviderScope(child: App()));
}
