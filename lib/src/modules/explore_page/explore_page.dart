import 'package:dummy_store/src/global_widgets/app_scaffold.dart';
import 'package:dummy_store/src/modules/explore_page/components/explore_app_bar/explore_app_bar.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)!.settings.arguments as Map;

    Future<bool> onWillPop(BuildContext context) {
      // showDialog(
      //   context: context,
      //   builder: (_) {
      //     return const AlertDialog(
      //       title: Text("No road"),
      //       content: Text("Please"),
      //     );
      //   },
      // );

      // Future.delayed(
      //   const Duration(seconds: 1),
      //   () => Navigator.pop(context),
      // );

      return Future.value(true);
    }

    return AppScaffold(
        appBar: const ExploreAppBar(),
        body: WillPopScope(
          onWillPop: () async => onWillPop(context),
          child: Center(
            child: Text(params["foo" ?? "Hi"]),
          ),
        ));
  }
}
