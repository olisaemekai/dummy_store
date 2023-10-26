import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        hintText: "Searching Item",
        hintStyle: AppStyles.body.copyWith(color: AppColors.grey),
        prefixIcon: const Icon(Icons.search, size: 25),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        isCollapsed: true,
      ),
    );
  }
}
