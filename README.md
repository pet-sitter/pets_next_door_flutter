# Pets Next Door Flutter
---

## Getting Started 🚀

앱 실행을 위해서는 환경번수 파일(.env)이 필요합니다.
해당파일은 pubspec.yaml파일과 동일한 위치에 저장하시면 됩니다.



```
pets_next_door_flutter

├─ lib
│  ├─ app
│  │  ├─ di
│  │  │  ├─ app_binding.dart
│  │  │  ├─ feature_di_interface.dart
│  │  │  ├─ locator.dart
│  │  │  └─ modules
│  │  │     └─ user_di.dart
│  │  ├─ env
│  │  │  ├─ firebase_options_dev.dart
│  │  │  ├─ firebase_options_prod.dart
│  │  │  └─ flavors.dart
│  │  └─ router
│  │     ├─ app_router.dart
│  │     └─ scaffold_with_nested_navigation.dart
│  ├─ app.dart
│  ├─ core
│  │  ├─ constants
│  │  ├─ enums
│  │  ├─ helper
│  │  ├─ localization
│  │  ├─ network_handling
│  │  ├─ services
│  │  ├─ theme
│  │  └─ utils
│  ├─ features
│  │  └─ user
│  │     ├─ api
│  │     ├─ data
│  │     │  ├─ dto
│  │     │  ├─ local
│  │     │  └─ remote
│  │     ├─ entities
│  │     ├─ repositories
│  │     ├─ usecases
│  │     └─ user.dart
│  └─ presentation
│     ├─ pages
│     │  └─ sign_up
│     │     ├─ providers
│     │     ├─ sign_up_event.dart
│     │     └─ sign_up_page.dart
│     ├─ providers // 앱에서 공통으로 사용하는 provider
│     │  └─ user
│     │     └─ user_data_provider.dart
│     └─ widgets // 앱 공통 위젯
│        ├─ appbar
│        ├─ bottom_sheet
│        ├─ box
│        ├─ button
│        ├─ image
│        ├─ text_field
│        └─ toast
├─ pubspec.yaml
└─ web

```
