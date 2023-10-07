import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_task/login_page/login_page.dart';
import 'package:test_task/main_page/main_page.dart';
import 'package:test_task/main_provider.dart';
import 'package:test_task/main_page/navigation_bar_pages/checkbox_page/checkbox_page.dart';
import 'package:test_task/main_page/navigation_bar_pages/listview_page/listview_page.dart';
import 'package:test_task/main_page/navigation_bar_pages/radio_page/radio_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/",
      redirect: (context, state) {
        if (Provider.of<MainProvider>(context).isLogged) {
          return "/listview";
        } else {
          return "/login";
        }
      },
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => MainPage(body: child),
      routes: [
        GoRoute(
          path: "/listview",
          builder: (context, state) => const ListViewPage(),
        ),
        GoRoute(
          path: "/checkbox",
          builder: (context, state) => const CheckBoxPage(),
        ),
        GoRoute(
          path: "/radio",
          builder: (context, state) => const RadioPage(),
        ),
      ],
    )
  ],
);
