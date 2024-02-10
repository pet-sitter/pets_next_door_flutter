import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';

/// 숨겼다 나타났다 할 수 있는 검색바
class AnimatedSearchBar extends StatelessWidget {
  const AnimatedSearchBar({
    super.key,
    required this.showSearchBar,
    required this.onSubmitted,
    this.enableDivider = true,
  });

  final bool showSearchBar;
  final bool enableDivider;
  final void Function(String text) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      clipBehavior: Clip.hardEdge,
      height: showSearchBar ? 79 : 0,
      duration: const Duration(milliseconds: 100),
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
      decoration: BoxDecoration(
        border: enableDivider
            ? Border(
                bottom: showSearchBar
                    ? BorderSide(width: 15, color: AppColor.of.gray20)
                    : BorderSide.none,
              )
            : null,
      ),
      child: Container(
        height: 40,
        width: double.infinity,
        child: TextField(
          onSubmitted: (value) => onSubmitted.call(value),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            filled: true,
            fillColor: AppColor.of.gray20,
            focusColor: AppColor.of.gray20,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Icon(Icons.search),
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 40),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
                gapPadding: 0),
          ),
        ),
      ),
    );
  }
}
