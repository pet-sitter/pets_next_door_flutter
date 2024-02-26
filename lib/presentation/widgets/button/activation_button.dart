import 'package:flutter/material.dart';

class ActivationButton extends StatelessWidget {
  const ActivationButton({
    required this.text,
    required this.isActive,
    this.textColor,
    this.buttonColor,
    this.onTap,
    super.key,
  });

  final bool isActive;

  final void Function()? onTap;

  final String text;

  final Color? textColor;

  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: isActive ? buttonColor ?? Colors.black : Color(0xffD1D1D1),
            borderRadius: BorderRadius.circular(4)),
        width: double.infinity,
        height: 50,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
