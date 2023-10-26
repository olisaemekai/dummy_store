import 'package:flutter/material.dart';

import 'app_text_field.dart';
import 'filter_button.dart';

class AppSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: AppTextField(),
          ),
          FilterButton(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
