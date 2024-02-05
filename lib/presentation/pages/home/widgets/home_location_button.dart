part of '../home_view.dart';

const double _kLocationIconSize = 24;
const double _kHighlightBoxHeight = 10;

class _HomeLocationButton extends StatelessWidget {
  const _HomeLocationButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 45,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              PNDImages.location,
              width: _kLocationIconSize,
              height: _kLocationIconSize,
              isAntiAlias: true,
            ),
            gapW4,
            Row(
              children: [
                IntrinsicWidth(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                          child: Container(
                        height: _kHighlightBoxHeight,
                        color: AppColor.of.primaryGreen.withOpacity(0.2),
                      )),
                      Text('용답동', style: AppTextStyle.headlineBold1),
                    ],
                  ),
                ),
                Text(' 의 멍냥모임', style: AppTextStyle.headlineBold1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
