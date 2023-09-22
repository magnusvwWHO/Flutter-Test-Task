import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/routes/router.dart';
import 'package:test_task/routes/router.gr.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
          deepLinkBuilder: (deepLink) => const DeepLink([LoginRoute()])),
    );
  }
}
