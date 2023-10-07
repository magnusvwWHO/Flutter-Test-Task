import 'package:flutter/material.dart';

class CheckBoxPageProvider extends ChangeNotifier {
  final itemCount = 10;

  late final List<bool> _isChecked = List.generate(itemCount, (index) => false);

  Widget? itemBuilder(BuildContext context, int index) {
    return CheckboxListTile(
      title: Text("Option $index"),
      value: _isChecked[index],
      onChanged: (value) {
        _isChecked[index] = value ?? false;
        notifyListeners();
      },
    );
  }
}
