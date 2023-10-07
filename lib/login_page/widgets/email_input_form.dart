import 'package:flutter/material.dart';
import '../style.dart';

class EmailInputForm extends StatelessWidget {
  const EmailInputForm(
      {super.key, required this.validator, required this.onSaved});

  final String? Function(String?) validator;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      child: TextFormField(
        decoration: const InputDecoration(labelText: "Email"),
        keyboardType: TextInputType.emailAddress,
        style: sizeTextBlack,
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
