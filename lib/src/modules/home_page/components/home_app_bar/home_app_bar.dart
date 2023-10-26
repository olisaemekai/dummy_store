import 'package:flutter/material.dart';

import 'cart_button.dart';
import 'home_app_bar_title.dart';
import '../app_search_bar/home_app_search_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  AppBar appBar([Color? color]) {
    return AppBar(
      backgroundColor: color,
      elevation: 0,
      centerTitle: false,
      title: const HomeAppBarTitle(),
      actions: const [
        CartButton(),
      ],
      bottom: const AppSearchBar(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return appBar(Theme.of(context).canvasColor);
  }

  @override
  Size get preferredSize => appBar().preferredSize;
}
