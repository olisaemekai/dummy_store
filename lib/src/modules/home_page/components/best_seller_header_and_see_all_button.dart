import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../config/routes/route_names.dart';

class BestSellerHeaderAndSeeAllButton extends StatelessWidget {
  const BestSellerHeaderAndSeeAllButton({super.key});

  void goToExplore(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //       builder: (_) => const ExplorePage(),
    //       settings: const RouteSettings(arguments: {'foo': 'bar'})),
    // );
    Navigator.pushNamed(
      context,
      RouteNames.detailPage,
      arguments: {"foo": "bar"},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Seller",
          style: AppStyles.header.copyWith(
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: () => goToExplore(context),
          child: Text(
            "See All",
            style: AppStyles.body
                .copyWith(color: AppColors.orange, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
