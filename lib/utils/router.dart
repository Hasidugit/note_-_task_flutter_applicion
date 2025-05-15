import 'package:flutter/material.dart';
import 'package:flutter_application_note_dp/pages/home_page.dart';
import 'package:flutter_application_note_dp/pages/note_page.dart';
import 'package:flutter_application_note_dp/pages/todo_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: "/",
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        name: "notes",
        path: "/notes",
        builder: (context, state) {
          return NotePage();
        },
      ),
      GoRoute(
        name: "todos",
        path: "/todos",
        builder: (context, state) {
          return TodoPage( );
        },
      ),
    ],
  );
}
