import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        color: Colors.grey,
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
