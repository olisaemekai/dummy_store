import 'package:dummy_store/src/modules/home_page/models/best_seller_model.dart';
import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerItems extends StatelessWidget {
  BestSellerItems({super.key});

  final List<BestSellerModel> bestSellers = [
    const BestSellerModel("Plant", 5.0),
    const BestSellerModel("Lamp", 4.0),
    const BestSellerModel("Chair", 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 3; i++)
          BestSellerItem(
            productName: bestSellers[i].productName,
            productRating: bestSellers[1].productRating,
          ),
      ],
    );
  }
}
