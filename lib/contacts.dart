import 'package:call_list_site/components.dart';
import 'package:call_list_site/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _twitter = 'https://x.com/BethelMmadu';
const _mail = 'mailto:bethelcletus87@gmail.com';
Future<void> urlLaunch(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});
  static const path = "/contact";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: Center(
        child: SizedBox(
          width: 600,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/pic.jpg",
                      width: 200,
                      height: 200,
                    ),
                  ),
                  const Text("Hello 👋, I am Bethel",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "I am a mobile developer. I believe solving problems is important, especially little problems because you might not be the only one facing it, and sometimes small problems become big problems when ignored",
                    style: TextStyle(color: Color.fromARGB(255, 191, 191, 192)),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "i created this app because i could be quite forgetfull about calls i want to make ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 191, 191, 192)),
                        ),
                        TextSpan(
                          text: '🙂', // emoji
                          style: TextStyle(
                            fontSize: 24,
                          ), // null color preserves emoji colors
                        ),
                        TextSpan(
                          text:
                              "and guess what its not just me, alot of people are like that",
                          style: TextStyle(
                              color: Color.fromARGB(255, 191, 191, 192)),
                        ),
                        TextSpan(
                          text: ' 😅', // emoji
                          style: TextStyle(
                            fontSize: 24,
                          ), // null color preserves emoji colors
                        ),
                        TextSpan(
                          text: ", so i created this app to help me remember",
                          style: TextStyle(
                              color: Color.fromARGB(255, 191, 191, 192)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "If you have feedback or questions, or you want to reach out to me , you can through: ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 191, 191, 192),
                    ),
                  ),
                  Column(
                    children: [
                      ContactButton(
                        title: "twitter",
                        tooltip: _twitter,
                        onPressed: () {
                          urlLaunch(_twitter);
                        },
                      ),
                      ContactButton(
                        tooltip: _mail,
                        title: "email",
                        onPressed: () {
                          urlLaunch(_mail);
                        },
                      ),
                    ],
                  ),
                  const BottomPageActions()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.tooltip,
  });
  final String title;
  final String tooltip;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(color: Color.fromARGB(255, 40, 134, 211)),
          )),
    );
  }
}
