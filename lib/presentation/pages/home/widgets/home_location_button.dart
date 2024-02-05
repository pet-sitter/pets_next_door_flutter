part of '../home_view.dart';

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
              width: 24,
              height: 24,
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
                        height: 10,
                        color: Colors.amber.withOpacity(0.2),
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
