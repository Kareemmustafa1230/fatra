import 'package:flutter/material.dart';
import '../../../../core/theming/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: ThemeApp.font18White500Weight.copyWith(fontWeight: FontWeight.w600),
      ),
      backgroundColor: ThemeApp.green73,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: onPressed ?? () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios_new),
        color: ThemeApp.whiteFF,
        iconSize: 22,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
