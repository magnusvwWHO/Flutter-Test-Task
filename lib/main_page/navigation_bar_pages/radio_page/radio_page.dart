import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/main_page/navigation_bar_pages/radio_page/radio_page_provider.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RadioPageProvider(),
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.pink.shade50,
        body: Consumer<RadioPageProvider>(
          builder: (context, provider, child) => ListView.builder(
              itemCount: provider.itemCount, itemBuilder: provider.itembuilder),
        ),
      ),
    );
  }
}
