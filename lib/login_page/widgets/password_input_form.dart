import 'package:flutter/material.dart';
import '../style.dart';

class PasswordInputForm extends StatelessWidget {
  const PasswordInputForm({super.key, required this.onSaved});

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      child: TextFormField(
        decoration: const InputDecoration(labelText: "Password"),
        obscureText: true,
        style: sizeTextBlack,
        onSaved: onSaved,
      ),
    );
  }
}
