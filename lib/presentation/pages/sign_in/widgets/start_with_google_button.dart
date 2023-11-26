import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_in/sign_in_event.dart';

/// 터치할 수 있는 원형 sns 버튼 위젯
class StartWithGoogleButton extends ConsumerWidget with SignInEvent {
  const StartWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        await onTapSignInWithGoogle(ref);
      },
      child: SvgPicture.asset(PNDSvgs.google),
    );
  }
}
