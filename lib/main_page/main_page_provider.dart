import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPageProvider extends ChangeNotifier {
  MainPageProvider({required this.context});

  final BuildContext context;

  final pages = ['/listview', '/checkbox', '/radio'];
  int currentIndex = 0;

  dynamic onTap(int newIndex) {
    currentIndex = newIndex;
    GoRouter.of(context).go(pages[newIndex]);
    notifyListeners();
  }

  int getCurrentIndex() {
    return currentIndex;
  }
}
