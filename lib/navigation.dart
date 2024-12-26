import 'package:call_list_site/main.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(),
    ),
  ],
);
