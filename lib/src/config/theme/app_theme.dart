import 'package:flutter/material.dart';

part 'app_styles.dart';
part 'app_colors.dart';

abstract class AppTheme {
  static final ligth = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orange),
  );
}
