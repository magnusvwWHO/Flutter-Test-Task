import 'package:flutter/material.dart';

class RadioPageProvider extends ChangeNotifier {
  final int itemCount = 6;
  int _choice = -1;

  Widget? itembuilder(BuildContext context, int index) {
    return RadioListTile(
      title: Text("Choice $index"),
      value: index,
      groupValue: _choice,
      onChanged: (value) {
        _choice = value ?? -1;
        notifyListeners();
      },
    );
  }
}
