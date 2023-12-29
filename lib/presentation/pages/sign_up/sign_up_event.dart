import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/user.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/providers/register_pet_step_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_data_provider.dart';

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
    final signUpData = ref.read(signUpDataProvider);
    final createUserResult = await createUserDataUseCase.call(signUpData);

    ref.invalidate(userDataProvider);

    createUserResult.fold(
      onSuccess: (userData) {
        ref.context.goNamed(AppRoute.home.name);
      },
      onFailure: (e) => throw e,
    );
  }

  @override
  void onTapAddPetButton(WidgetRef ref) {}
}
