import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/sign_in_event.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';

/// 터치할 수 있는 원형 sns 버튼 위젯
class StartWithKakaoButton extends ConsumerWidget with SignInEvent {
  const StartWithKakaoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        // TODO: 아직 CustomToken 발급 API가 나오지 않아서 불가능
        ToastService.show(NormalToast(message: '현재 카카오 로그인이 불가합니다.'));
        // await onTapSignInWithKakao(ref);
      },
      child: SvgPicture.asset(PNDSvgs.kakao),
    );
  }
}
