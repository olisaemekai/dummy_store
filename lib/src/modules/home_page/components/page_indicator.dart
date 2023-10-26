import 'package:dummy_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatefulWidget {
  const PageIndicator(this.pageController, {super.key});

  final PageController pageController;

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  void initState() {
    widget.pageController.addListener(listenToPageView);
    super.initState();
  }

  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  void listenToPageView() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundColor: widget.pageController.page!.toInt() == i
                    ? AppColors.orange
                    : AppColors.grey,
                radius: 5,
              ),
            ),
        ],
      ),
    );
  }
}
