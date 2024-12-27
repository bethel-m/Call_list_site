import 'package:call_list_site/NotFoundPage.dart';
import 'package:call_list_site/change_log.dart';
import 'package:call_list_site/components.dart';
import 'package:call_list_site/contacts.dart';
import 'package:call_list_site/navigation.dart';
import 'package:call_list_site/privacy_screen.dart';
import 'package:call_list_site/tos_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

void main() {
  usePathUrlStrategy();
  runApp(MyApp());
}

const String assetName = 'assets/svg/my_icon.svg';
final Widget svg = SvgPicture.asset(
  assetName,
  semanticsLabel: 'Dart Logo',
  width: 50,
  height: 50,
);
final Widget playstore = SvgPicture.asset(
  'assets/svg/play-store.svg',
  semanticsLabel: 'Dart Logo',
  width: 50,
  height: 50,
);
final Widget appstore = SvgPicture.asset(
  'assets/svg/apple_logo.svg',
  semanticsLabel: 'Dart Logo',
  // colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
  width: 50,
  height: 50,
);

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: MyHomePage.path,
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        path: PrivacyScreen.path,
        builder: (context, state) => const PrivacyScreen(),
      ),
      GoRoute(
        path: ContactScreen.path,
        builder: (context, state) => const ContactScreen(),
      ),
      GoRoute(
        path: TermsAndConditionsScreen.path,
        builder: (context, state) => const TermsAndConditionsScreen(),
      ),
      GoRoute(
        path: ChangeLogScreen.path,
        builder: (context, state) => const ChangeLogScreen(),
      ),
    ],
    errorBuilder: (context, state) => const Notfoundpage(),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Call List',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF16181D),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  static const path = '/';
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: getAppBAr(context),
      body: ListView(
        //shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Align(
              child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                selectionColor: Colors.white,
                "Get Reminded to call",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "a text giving a brifed disccussion of athe app",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          )),
          AppStoresActions(),
          SizedBox(
            height: 16,
          ),
          AppImagesWidget(),
          FeaturesListing(
            items: features,
          ),
          AppStoresActions(),
          BottomPageActions(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class BottomPageActions extends StatelessWidget {
  const BottomPageActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 16),
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "©Bethel  2025",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 24),
          BottomLink(
            tooltip: "https/callList/Contact",
            linkName: "Contact",
            onPressed: () {
              context.go(ContactScreen.path);
            },
          ),
          const SizedBox(width: 24),
          BottomLink(
            tooltip: "https/callList/ChangeLog",
            linkName: "Change Log",
            onPressed: () {
              context.go(ChangeLogScreen.path);
            },
          ),
          const SizedBox(width: 24),
          BottomLink(
            tooltip: "https/callList/Privacy",
            linkName: "Privacy",
            onPressed: () {
              context.go(PrivacyScreen.path);
            },
          ),
          const SizedBox(width: 24),
          BottomLink(
            tooltip: "https/callList/TermsAndConditions",
            linkName: "TOS",
            onPressed: () {
              context.go(TermsAndConditionsScreen.path);
            },
          ),
        ],
      ),
    );
  }
}

class AppStoresActions extends StatelessWidget {
  const AppStoresActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppStoreWidget(),
          SizedBox(
            width: 16,
          ),
          PlayStoreWidget(),
        ],
      ),
    );
  }
}

class BottomLink extends StatelessWidget {
  const BottomLink({
    super.key,
    required this.tooltip,
    required this.linkName,
    required this.onPressed,
  });
  final String tooltip;
  final String linkName;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            linkName,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
              decorationColor: Colors.white,
            ),
          )),
    );
  }
}

class AppImagesWidget extends StatelessWidget {
  const AppImagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const Center(
          child: SampleImage("assets/images/list.png"),
        );
      } else {
        return const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SampleImage("assets/images/list.png"),
            SizedBox(
              width: 12,
            ),
            SampleImage("assets/images/detail.png"),
          ],
        );
      }
    });
  }
}

class PlayStoreWidget extends StatefulWidget {
  const PlayStoreWidget({
    super.key,
  });

  @override
  State<PlayStoreWidget> createState() => _PlayStoreWidgetState();
}

class _PlayStoreWidgetState extends State<PlayStoreWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (event) => {
          setState(() {
            isHovering = true;
          })
        },
        onExit: (event) {
          setState(() {
            isHovering = false;
          });
        },
        onEnter: (event) {},
        child: Tooltip(
          message: "Google play store",
          child: AnimatedContainer(
            duration: Durations.short4,
            padding: EdgeInsets.symmetric(
              horizontal: isHovering ? 20 : 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                  color: isHovering
                      ? Colors.white
                      : const Color.fromARGB(255, 167, 158, 158)),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
                  blurRadius: isHovering ? 8 : 0,
                  offset: Offset(0, isHovering ? 4 : 0),
                ),
              ],
            ),
            child: Row(
              children: [
                playstore,
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "GET IT ON",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Play Store",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppStoreWidget extends StatefulWidget {
  const AppStoreWidget({
    super.key,
  });

  @override
  State<AppStoreWidget> createState() => _AppStoreWidgetState();
}

class _AppStoreWidgetState extends State<AppStoreWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (event) => {
              setState(() {
                isHovering = true;
              })
            },
            onExit: (event) {
              setState(() {
                isHovering = false;
              });
            },
            onEnter: (event) {},
            child: Tooltip(
              message: "App Store -- coming soon",
              child: AnimatedContainer(
                duration: Durations.short4,
                padding: EdgeInsets.symmetric(
                  horizontal: isHovering ? 20 : 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                      color: isHovering
                          ? Colors.white
                          : const Color.fromARGB(255, 167, 158, 158)),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.1),
                      blurRadius: isHovering ? 8 : 0,
                      offset: Offset(0, isHovering ? 4 : 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    appstore,
                    const SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Download on the",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "App Store",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Positioned widget to make overlay cover the entire button
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Text(
                'Coming Soon',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

const List<FeatureTextWidget> features = [
  FeatureTextWidget(
      icon: Icons.list,
      featureTopic: "Keep track of people to call",
      featureText:
          "You can can keep a list that tracks the people you want to call and its readily available to you "),
  FeatureTextWidget(
      icon: Icons.details,
      featureTopic: "reason and description",
      featureText:
          "you can put down a description of why you want to call someone, that way you would not have to worry about forgeting "),
  FeatureTextWidget(
    icon: Icons.select_all,
    featureTopic: "pick contact directly from phone",
    featureText:
        "does puttng down a name and a number seem tiring, no worries, you can directly pick contacts from your phone ",
  ),
  FeatureTextWidget(
      icon: Icons.alarm,
      featureTopic: "set a remindere",
      featureText:
          "you can set a reminder which could be recurring or once to remind you to call a person"),
  FeatureTextWidget(
      featureText:
          "you can group related tasks to better organize the calls you want to make",
      featureTopic: "orgnize to groups",
      icon: Icons.group),
  FeatureTextWidget(
      icon: Icons.bar_chart,
      featureTopic: "stats page",
      featureText:
          "You can see how an overview of your call tasks , and an insight to  their distrbution, completed ,non-complete,repeated etc")
];

class FeatureTextWidget extends StatelessWidget {
  final String featureTopic;
  final String featureText;
  final IconData icon;
  const FeatureTextWidget({
    required this.featureText,
    required this.featureTopic,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Text(
                  featureTopic,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Text(
            featureText,
            style: const TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 191, 191, 192),
            ),
          ),
        ],
      ),
    );
  }
}

class SampleImage extends StatelessWidget {
  final String imagePath;
  const SampleImage(
    this.imagePath, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: 450,
    );
  }
}

class FeaturesListing extends StatelessWidget {
  final List<Widget> items;

  const FeaturesListing({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1080) {
          return Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 16,
            children: items,
          );
        } else {
          return Column(
            children: [
              for (var i = 0; i < items.length; i += 3)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: items.sublist(i, i + 3),
                )
            ],
          );
        }
      },
    );
  }
}
