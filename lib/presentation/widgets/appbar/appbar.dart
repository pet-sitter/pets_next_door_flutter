import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PNDAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PNDAppBar({
    super.key,
    this.title = '',
    this.onTapBackbutton,
    this.leading,
  });

  final String title;
  final void Function()? onTapBackbutton;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      leading: leading ?? PNDBackButton(onTapBackbutton: onTapBackbutton),
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
    super.key,
  });

  final void Function()? onTapBackbutton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      radius: 18,
      onTap: onTapBackbutton ?? () => context.pop(),
      child: const Icon(Icons.arrow_back_ios_rounded),
    );
  }
}
