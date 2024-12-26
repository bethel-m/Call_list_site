import 'package:call_list_site/contacts.dart';
import 'package:call_list_site/main.dart';
import 'package:call_list_site/privacy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

const String assetName = 'svg/my_icon.svg';
final Widget svg = SvgPicture.asset(
  assetName,
  semanticsLabel: 'Dart Logo',
  width: 50,
  height: 50,
);
PreferredSizeWidget getAppBAr(
  BuildContext context,
) {
  return AppBar(
    scrolledUnderElevation: 0,
    foregroundColor: Colors.white,
    toolbarHeight: 100,
    //  leadingWidth: 500,
    // centerTitle: true,
    // TRY THIS: Try changing the color here to a specific color (to
    // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    // change color while the other colors stay the same.
    backgroundColor: Color(0xFF16181D),
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Padding(
      padding: EdgeInsets.symmetric(vertical: 100),
      child: Wrap(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HomeLogoWidget(),
            Flexible(
              child: Container(
                color: Colors.blue,
                width: 700,
                // child: Text('Constrained Box Example'),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBarAction(
                  icon: Icons.email_outlined,
                  toolTip: "contact",
                  onPressed: () {
                    context.go(ContactScreen.path);
                  },
                ),
              ],
            )
          ]),
    ),
  );
}

class AppBarSpacing extends StatelessWidget {
  const AppBarSpacing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const SizedBox(
          width: 100,
        );
      } else if (constraints.maxWidth < 900) {
        return const SizedBox(
          width: 700,
        );
      } else {
        return const SizedBox(
          width: 200,
        );
      }
    });
  }
}

class HomeLogoWidget extends StatelessWidget {
  const HomeLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Tooltip(
        message: "Home",
        child: GestureDetector(
          onTap: () {
            context.go(MyHomePage.path);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              svg,
              const SizedBox(
                width: 12,
              ),
              const Text(
                "Call List",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.toolTip,
  });
  final String toolTip;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTip,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 35,
        ),
      ),
    );
  }
}
