import 'dart:io';

import 'package:dummy_store/src/config/routes/route_names.dart';
import 'package:dummy_store/src/config/routes/routes.dart';
import 'package:dummy_store/src/config/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/home_page/home_page.dart';

class DummyOnlineStore extends StatelessWidget {
  const DummyOnlineStore({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: AppColors.transparent,
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.ligth,
      // home: const ExplorePage(),
      // home: HomePage(),
      initialRoute: RouteNames.homePage,
      routes: routes,
    );
  }
}
