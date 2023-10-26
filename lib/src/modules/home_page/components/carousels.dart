import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:dummy_store/src/global_widgets/carousel_card.dart';
import 'package:flutter/material.dart';

class Carousels extends StatelessWidget {
  const Carousels(
    this.pageController, {
    super.key,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        itemCount: 4,
        itemBuilder: (_, index) => CarouselCard(
          color: index % 2 == 0 ? AppColors.blue : AppColors.orange,
        ),
      ),
    );
  }
}
