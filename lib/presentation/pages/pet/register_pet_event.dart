import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/providers/register_pet_step_controller_provider.dart';

abstract class _RegisterPetEvent {
  /// 앱바의 [BackButton]을 눌렀을 때 실행할 콜백
  ///
  /// 이전 반려동물 등록 단계로 넘어간다. 이전 단계로 넘어갈 시 현재 단계에 작성한 데이터는 삭제한다.
  void onTapBackButton(WidgetRef ref);

  // void onTapJobGroupStepNext(WidgetRef ref);

  Future<void> onTapRegisterPetDetailNext(WidgetRef ref);
}

mixin class RegisterPetEvent implements _RegisterPetEvent {
  @override
  void onTapBackButton(WidgetRef ref) {
    ref.read(registerPetStepControllerProvider.notifier).prev();
    // TODO : 단계별 데이터 삭제 로직
    final stepController = ref.read(registerPetStepControllerProvider);
    switch (stepController.page!.toInt()) {
      case 1:
        {}
      case 2:
        {}
    }
  }

  @override
  Future<void> onTapRegisterPetDetailNext(WidgetRef ref) async {
    try {
      // await EasyLoading.show()
      //     .then(
      //       (_) => ref.read(signUpFormProvider.notifier).submit(),
      //     )
      //     .then(
      //       (_) => ref.refresh(appUserDataProvider.future),
      //     )
      //     .then(
      //   (value) {
      //     if (value == null || !value.isCompleteSignUp) {
      //       throw Exception('회원가입 실패');
      //     }

      //     const MainRoute().go(ref.context);
      //   },
      // ).whenComplete(
      //   EasyLoading.dismiss,
      // );

      ref.read(registerPetStepControllerProvider.notifier).next();
    } on Exception catch (e) {}
  }
}
