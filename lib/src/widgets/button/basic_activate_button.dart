import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PNDBasicActivateButton extends StatelessWidget {
  const PNDBasicActivateButton({
    required this.text,
    required this.isActive,
    this.onTap,
    super.key,
  });

  final bool isActive;

  final void Function()? onTap;

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 20),
        color: isActive ? Colors.black : Colors.grey,
        width: double.infinity,
        height: 50,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
