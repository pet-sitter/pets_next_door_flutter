import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kakao_flutter_sdk_auth/kakao_flutter_sdk_auth.dart';
import 'package:pets_next_door_flutter/app/di/app_binding.dart';
import 'package:pets_next_door_flutter/app/env/firebase_options_dev.dart'
    as dev;
import 'package:pets_next_door_flutter/app/env/firebase_options_prod.dart'
    as prod;
import 'package:pets_next_door_flutter/core/services/local_storage_service.dart';

enum BuildType {
  development,
  production,
}

class Flavor {
  Flavor._();

  static final Flavor _instance = Flavor._();

  static late BuildType _buildType;

  static Flavor get instance => _instance;

  static String get name => _buildType.name;

  static BuildType get buildType => _buildType;

  static void initialize(BuildType type) {
    _buildType = type;
  }

  Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();

    // 환경변수 파일 로드
    await dotenv.load();

    await Firebase.initializeApp(
        name: Flavor.name, options: Flavor.firebaseOptions);

    // 카카오 로그인을 위한 sdk init
    KakaoSdk.init(
      nativeAppKey: dotenv.env['NATIVE_APP_KEY'],
      javaScriptAppKey: dotenv.env['JAVASCRIPT_APP_KEY'],
    );

    await LocalStorageService.init();

    // 앱 DI 실행
    AppBinder.init();
  }

  static String get title {
    switch (buildType) {
      case BuildType.development:
        return 'Development App';
      case BuildType.production:
        return 'Production App';
      default:
        return 'title';
    }
  }

  static FirebaseOptions get firebaseOptions {
    switch (buildType) {
      case BuildType.development:
        return dev.DefaultFirebaseOptions.currentPlatform;
      case BuildType.production:
        return prod.DefaultFirebaseOptions.currentPlatform;
      default:
        return prod.DefaultFirebaseOptions.currentPlatform;
    }
  }

  static String get apiUrl {
    switch (buildType) {
      case BuildType.development:
        return dotenv.env['BASE_URL_DEV']!;
      case BuildType.production:
        return dotenv.env['BASE_URL_PROD']!;
      default:
        return dotenv.env['BASE_URL_PROD']!;
    }
  }
}
