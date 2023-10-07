import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

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
          ),
        ),
      ),
    );
  }
}
