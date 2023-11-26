import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';

/// 터치할 수 있는 원형 sns 버튼 위젯
/// - [onTap] : 선택한 sns provider type을 리턴합니다.
/// - [snsType] : 어떤 sns Provider 타입을 가지는 버튼인지 받습니다.
class SnsButtonWidget extends StatelessWidget {
  const SnsButtonWidget({
    required this.snsType,
    required this.onTap,
    super.key,
  });

  final SnsProviderType snsType;

  final void Function(SnsProviderType) onTap;

  @override
  Widget build(BuildContext context) {
    final svgAssetUrl = switch (snsType) {
      SnsProviderType.apple => PNDSvgs.apple,
      SnsProviderType.google => PNDSvgs.google,
      SnsProviderType.kakao => PNDSvgs.kakao,
    };

    return GestureDetector(
      onTap: () => onTap.call(snsType),
      child: SvgPicture.asset(svgAssetUrl),
    );
  }
}
