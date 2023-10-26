import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
    this.color,
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
    this.height,
    this.width,
    this.iconSize = 100,
    this.padding,
  });

  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final double? height, width, iconSize;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.collections,
              color: AppColors.white,
              size: iconSize,
            ),
            Text(
              "Image here",
              style: AppStyles.body.copyWith(color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
