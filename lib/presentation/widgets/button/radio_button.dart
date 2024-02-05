import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';

class PndRadioButtonItem<T> extends StatelessWidget {
  const PndRadioButtonItem({
    super.key,
    required this.groupValue,
    required this.value,
    required this.text,
  });

  final T groupValue;
  final T value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 30,
      child: Row(
        children: [
          if (groupValue == value)
            Icon(Icons.check, size: 15, color: AppColor.of.black),
          gapW2,
          Text(
            text,
            style: (groupValue == value)
                ? AppTextStyle.bodyBold3
                : AppTextStyle.bodyRegular3.copyWith(color: AppColor.of.gray90),
          ),
        ],
      ),
    );
  }
}
