import 'package:call_list_site/components.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});
  static const path = "/terms";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: const Center(
        child: Text(
          "Terms and Conditions",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
