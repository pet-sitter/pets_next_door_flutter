import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PNDAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PNDAppBar({
    super.key,
    this.title = '',
    this.onTapBackbutton,
  });

  final String title;
  final void Function()? onTapBackbutton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leading: InkWell(
        borderRadius: BorderRadius.circular(100),
        radius: 18,
        onTap: onTapBackbutton ?? () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_rounded),
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
