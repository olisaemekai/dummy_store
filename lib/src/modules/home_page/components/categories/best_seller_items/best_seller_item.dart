import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:dummy_store/src/global_widgets/carousel_card.dart';
import 'package:dummy_store/src/modules/home_page/components/categories/best_seller_items/product_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.productName,
    required this.productRating,
  });

  final String productName;
  final double productRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(.1),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          const CarouselCard(
            color: AppColors.blue,
            padding: EdgeInsets.zero,
            width: 110,
            height: 116,
            iconSize: 40,
          ),
          ProductRating(
            productName: productName,
            productRating: productRating,
          )
        ],
      ),
    );
  }
}
