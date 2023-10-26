import 'package:dummy_store/src/global_widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
    );
  }
}
