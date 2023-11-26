import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';

class PNDBasicIconButton extends StatelessWidget {
  const PNDBasicIconButton({
    required this.text,
    this.icon,
    this.onTap,
    super.key,
  });

  final void Function()? onTap;

  final String text;

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Color(0xffF3F3F3), borderRadius: BorderRadius.circular(4)),
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            if (icon != null) gapW4,
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
