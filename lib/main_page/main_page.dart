import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:test_task/main_page/main_page_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainPageProvider(context: context),
      builder: (context, child) => Scaffold(
        body: body,
        backgroundColor: const Color.fromARGB(255, 255, 247, 251),
        bottomNavigationBar: Consumer<MainPageProvider>(
          builder: (context, provider, child) => SalomonBottomBar(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            currentIndex: provider.getCurrentIndex(),
            onTap: provider.onTap,
            items: [
              ///
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.list,
                  size: 30,
                ),
                selectedColor: Colors.purple.shade900,
                title: const Text('List'),
              ),

              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.check_box,
                  size: 30,
                ),
                selectedColor: Colors.purple.shade900,
                title: const Text('CheckBox'),
              ),

              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.radio_button_checked,
                  size: 30,
                ),
                selectedColor: Colors.purple.shade900,
                title: const Text('Radio'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
