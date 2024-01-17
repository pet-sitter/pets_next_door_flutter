# Pets Next Door Flutter

Pets Next Door

---

## Getting Started 🚀

앱 실행을 위해서는 환경번수 파일(.env)이 필요합니다.
해당파일은 pubspec.yaml이 있는 루트에 저장하시면 됩니다.



```
pets_next_door_flutter

├─ assets
│  ├─ fonts
│  ├─ imgs
│  └─ svgs
├─ lib
│  ├─ app
│  │  ├─ di
│  │  │  ├─ app_binding.dart
│  │  │  ├─ feature_di_interface.dart
│  │  │  ├─ locator.dart
│  │  │  └─ modules
│  │  │     ├─ auth_di.dart
│  │  │     ├─ media_di.dart
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
│  │  │  ├─ colors.dart
│  │  │  ├─ svgs.dart
│  │  │  └─ text_style.dart
│  │  ├─ enums
│  │  ├─ helper
│  │  ├─ localization
│  │  │  └─ string_hardcoded.dart
│  │  ├─ network_handling
│  │  │  ├─ app_dio.dart
│  │  │  ├─ exceptions
│  │  │  │  ├─ custom_exception.dart
│  │  │  │  └─ network_exception.dart
│  │  │  ├─ interceptors
│  │  │  │  ├─ logger_interceptor.dart
│  │  │  │  └─ token_interceptor.dart
│  │  │  └─ network_result.dart
│  │  ├─ services
│  │  │  ├─ size_service.dart
│  │  │  └─ toast_service.dart
│  │  ├─ theme
│  │  │  ├─ app_theme.dart
│  │  │  └─ components
│  │  │     └─ app_bar_theme.dart
│  │  └─ utils
│  │     ├─ result.dart
│  │     ├─ throttler.dart
│  │     └─ timer_notifier_provider.dart
│  ├─ features
│  │  ├─ auth
│  │  │  ├─ api
│  │  │  │  └─ auth_api.dart
│  │  │  ├─ auth.dart
│  │  │  ├─ data
│  │  │  │  └─ remote
│  │  │  │     └─ auth_remote_data_source.dart
│  │  │  ├─ repositories
│  │  │  │  └─ auth_repository.dart
│  │  │  └─ usecases
│  │  │     ├─ sign_in_oauth_use_case.dart
│  │  │     └─ sign_out_use_case.dart
│  │  └─ user
│  │     ├─ api
│  │     ├─ data
│  │     │  ├─ dto
│  │     │  │  ├─ user_data_dto.dart
│  │     │  ├─ local
│  │     │  │  ├─ user_local_data_source.dart
│  │     │  └─ remote
│  │     │     ├─ user_remote_data_source.dart
│  │     ├─ entities
│  │     │  └─ user_data_entity.dart
│  │     ├─ repositories
│  │     │  ├─ user_repository.dart
│  │     ├─ usecases
│  │     │  └─ get_user_data_use_case.dart
│  │     └─ user.dart
│  ├─ main_development.dart
│  ├─ main_production.dart
│  └─ presentation
│     ├─ pages
│     │  └─ sign_up
│     │     ├─ providers
│     │     │  └─ sign_up_firebase_auth_data_provider.dart
│     │     ├─ sign_up_event.dart
│     │     └─ sign_up_page.dart
│     ├─ providers // 앱에서 공통으로 사용하는 provider
│     │  └─ user
│     │     ├─ user_data_provider.dart
│     │     └─ user_data_provider.g.dart
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
