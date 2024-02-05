import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';

class PndDropdownButton<T> extends StatelessWidget {
  const PndDropdownButton({
    super.key,
    required this.selectedValueStr,
    required this.itemBuilder,
    this.onSelected,
  });

  final String selectedValueStr;
  final List<PopupMenuEntry<T>> Function(BuildContext) itemBuilder;
  final void Function(T)? onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      surfaceTintColor: Colors.white,
      constraints: const BoxConstraints.tightFor(width: 90),
      position: PopupMenuPosition.under,
      child: Container(
          height: 45,
          child: Row(
            children: [
              Text(
                selectedValueStr,
                style: AppTextStyle.bodyBold2,
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          )),
      onSelected: onSelected,
      itemBuilder: itemBuilder,
    );
  }
}
