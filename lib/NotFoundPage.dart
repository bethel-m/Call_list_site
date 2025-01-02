import 'package:call_list_site/components.dart';
import 'package:flutter/material.dart';

class Notfoundpage extends StatelessWidget {
  const Notfoundpage({super.key});
  static const path = "/notFound";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: const Center(
        child: Text(
          "404 - PAGE NOT FOUND",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
