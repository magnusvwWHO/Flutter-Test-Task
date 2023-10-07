import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/main_page/navigation_bar_pages/checkbox_page/checkbox_page_provider.dart';

class CheckBoxPage extends StatelessWidget {
  const CheckBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckBoxPageProvider(),
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.pink.shade50,
        body: Consumer<CheckBoxPageProvider>(
          builder: (context, provider, child) => ListView.builder(
              itemCount: provider.itemCount, itemBuilder: provider.itemBuilder),
        ),
      ),
    );
  }
}
