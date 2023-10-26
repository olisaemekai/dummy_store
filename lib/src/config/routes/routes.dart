import 'package:dummy_store/src/config/routes/route_names.dart';
import 'package:dummy_store/src/modules/detail_page/detail_page.dart';
import 'package:dummy_store/src/modules/explore_page/explore_page.dart';
import 'package:dummy_store/src/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  RouteNames.homePage: (_) => HomePage(),
  RouteNames.detailPage: (_) => const DetailPage(),
  RouteNames.explorePage: (_) => const ExplorePage(),
};
