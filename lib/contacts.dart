import 'package:call_list_site/components.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});
  static const path = "/contact";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: const Center(
        child: Text(
          "Contacts Screen",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
