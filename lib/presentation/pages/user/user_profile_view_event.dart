import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/features/sign_up/domain/profile_form.dart';

// final Debouncer _nicknameValidateDebouncer = Debouncer(1.seconds);

mixin class SignUpPageEvent {
  /// 앱바의 [BackButton]을 눌렀을 때 실행할 콜백
  ///
  /// 이전 회원가입 단계로 넘어간다. 이전 단계로 넘어갈 시 현재 단계에 작성한 데이터는 삭제한다.
  // void onTapBackButton(WidgetRef ref) {
  //   ref.read(signUpStepControllerProvider.notifier).prev();
  //   // TODO : 단계별 데이터 삭제 로직
  // }

  /// 닉네임 필드가 변경될 떄마다 실행할 콜백
  ///
  /// 로딩 인디케이터 표시를 위해 [isRunningDebouncer]를 콜백 시작과 끝에 변경한다.
  /// [debouncer]를 통헤 여러번 입력하더라도 마지막 입력만 검사하도록 제한한다.
  /// 입력 사이의 제한시간은 1초로 지정한다.
  Future<void> onChangeNicknameField(WidgetRef ref,
      {required String nickname, required ProfileForm previousProfile
      // required ValueNotifier<bool> isRunningDebouncer,
      }) async {
    // 입력받은 nickname이 비어있다면 콜백을 중단하고 닉네임 데이터를 초기화한다.
    // if (nickname.isEmpty) {
    //   isRunningDebouncer.value = false;
    //   _nicknameValidateDebouncer.reset();
    //   ref.read(signUpFormProvider.notifier).clearNickname();
    // } else {w
    //   isRunningDebouncer.value = true;

    //   _nicknameValidateDebouncer.call(
    //     () async {
    //       await ref.read(signUpFormProvider.notifier).updateNickname(nickname);

    //       isRunningDebouncer.value = false;
    //     },
    //   );
    // }\

    // await ref
    //     .read(profileFormNotifierProvider(previousProfile).notifier)
    //     .updateNickname(nickname);
  }

  Future<void> onTapSubmit(
    WidgetRef ref,
    ProfileForm newProfileForm,
  ) async {
    // final nickname = ref.watch(userNicknameNotifierProvider).maybeWhen(
    //       valid: (nickname) => nickname,
    //       orElse: () => null,
    //     );

    // if (nickname == null) return;
    // newProfileForm.when(
    //   register: (snsOAuthInfo, nickname, profileImageId, pets) {
    //     final authRepository =
    //         ref.read(authRepositoryProvider(snsOAuthInfo.providerType));
    //   },
    //   edit: (nickname, profileImageId, pets) {
    //     // final userRepository = ref.read(userRepo)
    //   },
    // );
  }
}
