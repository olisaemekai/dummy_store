import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExploreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Explore Page"),
      backgroundColor: AppColors.blue,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
