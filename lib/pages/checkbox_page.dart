import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<StatefulWidget> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  final itemCount = 10;
  late List<bool> isChecked = List.generate(itemCount, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text('Option $index'),
            value: isChecked[index],
            onChanged: (bool? value) {
              setState(() {
                isChecked[index] = value ?? false;
              });
            },
          );
        },
      ),
    );
  }
}
