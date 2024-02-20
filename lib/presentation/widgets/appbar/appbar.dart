import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PNDAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PNDAppBar({
    super.key,
    this.title = '',
    this.onTapBackbutton,
    this.leading,
    this.backgroundColor = Colors.white,
    this.leadingIconColor = Colors.black,
  });

  final String title;
  final void Function()? onTapBackbutton;
  final Widget? leading;
  final Color backgroundColor;
  final Color leadingIconColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: false,
      leading: leading ??
          PNDBackButton(
            onTapBackbutton: onTapBackbutton,
            color: leadingIconColor,
          ),
      titleSpacing: 0,
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class PNDBackButton extends StatelessWidget {
  const PNDBackButton({
    required this.onTapBackbutton,
    this.color = Colors.white,
    super.key,
  });

  final void Function()? onTapBackbutton;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      radius: 18,
      onTap: onTapBackbutton ?? () => context.pop(),
      child: Icon(
        Icons.arrow_back_ios_rounded,
        color: color,
      ),
    );
  }
}
