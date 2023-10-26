import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16),
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Material(
          color: AppColors.transparent,
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.tune,
                color: AppColors.white,
                size: 30,
              ),
            ),
          ),
        ));
  }
}
