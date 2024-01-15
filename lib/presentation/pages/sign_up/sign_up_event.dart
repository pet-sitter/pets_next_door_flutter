import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/user.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/providers/register_pet_step_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/providers/sign_up_firebase_auth_data_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/steps/profile_step/providers/sign_up_nickname_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/steps/profile_step/providers/sign_up_pet_list_provider.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_data_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';

abstract class _SignUpEvent {
  /// 앱바의 [BackButton]을 눌렀을 때 실행할 콜백
  ///
  /// 이전 반려동물 등록 단계로 넘어간다. 이전 단계로 넘어갈 시 현재 단계에 작성한 데이터는 삭제한다.
  void onTapBackButton(WidgetRef ref);

  void onTapProfileNextButton(WidgetRef ref);

  void onTapAddPetButton(WidgetRef ref);
}

mixin class SignUpEvent implements _SignUpEvent {
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
  Future<void> onTapProfileNextButton(WidgetRef ref) async {
    try {
      await EasyLoading.show();
      // TODO: 닉네임 중복검사 하기
      // 그다음, 닉네임 업데이트
      final nickname = ref.read(signUpNicknameProvider).mapOrNull(
            valid: (value) => value.text,
          );

      if (nickname == null) return;

      final createUserResult = await createUserDataUseCase.call(
        SignUpDataEntity(
          nickname: nickname,
          firebaseAuthData: ref.read(signUpFirebaseAuthDataProvider),
        ),
      );

      ref.invalidate(userDataProvider);

      createUserResult.fold(
        onSuccess: (userData) {
          ref.context.goNamed(AppRoute.home.name);
        },
        onFailure: (e) => throw e,
      );
    } on Exception catch (e) {
      ToastService.show(NormalToast(message: '${e}'));
    } finally {
      await EasyLoading.dismiss();
    }
  }

  @override
  Future<void> onTapAddPetButton(WidgetRef ref) async {
    final newPet = await ref.context.pushNamed(AppRoute.registerPet.name);

    if (newPet == null) return;

    ref.read(signUpPetListProvider.notifier).add(newPet as Pet);
  }
}
