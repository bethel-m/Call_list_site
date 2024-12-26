import 'package:call_list_site/components.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});
  static const path = "/privacy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: const Center(
        child: Text(
          "Privacy Screen",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
