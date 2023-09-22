import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<StatefulWidget> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  late int choice;

  @override
  void initState() {
    super.initState();
    choice = -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade50,
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Choice $index'),
              trailing: Radio(
                value: index,
                groupValue: choice,
                onChanged: (val) {
                  setState(() {
                    choice = val ?? -1;
                  });
                },
              ),
            );
          },
        ));
  }
}
