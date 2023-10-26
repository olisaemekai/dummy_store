import 'package:dummy_store/src/modules/home_page/models/category_model.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List<CategoryModel> categories = [
    const CategoryModel("Music", Icons.music_note_outlined),
    const CategoryModel("Property", Icons.apartment_outlined),
    const CategoryModel("Game", Icons.sports_esports_outlined),
    const CategoryModel("Gadget", Icons.devices_other_outlined),
    const CategoryModel("Electronic", Icons.tv),
    const CategoryModel("Vehicles", Icons.airport_shuttle_outlined),
    const CategoryModel("Furniture", Icons.weekend_outlined),
    const CategoryModel("Book", Icons.menu_book_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 14,
        ),
        itemBuilder: (_, index) {
          return CategoryCard(
            icon: categories[index].icon,
            text: categories[index].text,
          );
        },
      ),
    );
  }
}
