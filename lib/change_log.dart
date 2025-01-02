import 'package:call_list_site/components.dart';
import 'package:flutter/material.dart';

class ChangeLogScreen extends StatelessWidget {
  const ChangeLogScreen({super.key});
  static const path = "/changeLog";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: const Center(
        child: Text(
          "Change Log",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
