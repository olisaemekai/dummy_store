import 'package:dummy_store/src/config/routes/route_names.dart';
import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../explore_page/explore_page.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  void goToExplore(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //       builder: (_) => const ExplorePage(),
    //       settings: const RouteSettings(arguments: {'foo': 'bar'})),
    // );
    Navigator.pushNamed(
      context,
      RouteNames.explorePage,
      arguments: {"foo": "bar"},
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => goToExplore(context),
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: AppColors.black,
        ));
  }
}
