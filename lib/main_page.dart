import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
//import 'package:flutter/services.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: const Color.fromARGB(255, 255, 247, 251),
      routes: const [ListViewRoute(), CheckBoxRoute(), RadioRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.list,
                  size: 30,
                ),
                selectedColor: Colors.purple.shade900,
                title: const Text('List')),
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.check_box,
                  size: 30,
                ),
                selectedColor: Colors.purple.shade900,
                title: const Text('CheckBox')),
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.radio_button_checked,
                  size: 30,
                ),
                selectedColor: Colors.purple.shade900,
                title: const Text('Radio'))
          ],
        );
      },
    );
  }
}
