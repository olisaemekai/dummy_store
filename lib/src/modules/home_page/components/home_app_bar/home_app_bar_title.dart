import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome Back", style: AppStyles.body),
        Text(
          "Samatha William",
          style: AppStyles.header,
        ),
      ],
    );
  }
}
