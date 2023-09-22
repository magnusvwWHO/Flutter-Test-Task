import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  final outerTextBorder = const BoxDecoration(
      border: Border(
    top: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
    left: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
    right: BorderSide(color: Color.fromARGB(0, 0, 0, 0)),
    bottom: BorderSide(color: Color.fromARGB(0, 0, 0, 0)),
  ));

  final innerTextBorder = const BoxDecoration(
    border: Border(
      top: BorderSide(color: Color.fromARGB(255, 243, 229, 245)),
      left: BorderSide(color: Color.fromARGB(255, 243, 229, 245)),
      right: BorderSide(color: Color.fromARGB(255, 206, 147, 216)),
      bottom: BorderSide(color: Color.fromARGB(255, 206, 147, 216)),
    ),
    color: Color.fromARGB(255, 248, 187, 208),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Choose your fighter"),
        backgroundColor: Colors.pink.shade200,
      ),
      backgroundColor: Colors.pink.shade50,
      body: Center(
          child: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(
              Icons.accessibility,
              size: 40,
            ),
            title: Text('Fighter 1'),
            subtitle: Text('Range'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.accessible, size: 40),
            title: Text('Fighter 2'),
            subtitle: Text('Balance'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward, size: 40),
            title: Text('Fighter 3'),
            subtitle: Text('Speed'),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      )),
    ));
  }
}
