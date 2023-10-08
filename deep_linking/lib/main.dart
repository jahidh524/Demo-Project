import 'package:deep_linking/help.dart';
import 'package:deep_linking/home.dart';
import 'package:deep_linking/profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

GoRouter _appRoute = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: "/",
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: "/profile",
    builder: (BuildContext context, GoRouterState state) {
      return const Profile();
    },
  ),
  GoRoute(
    path: "/help",
    builder: (BuildContext context, GoRouterState state) {
      return const Help();
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRoute,
    );
  }
}
