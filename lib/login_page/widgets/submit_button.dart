import 'package:flutter/material.dart';
import '../style.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.black54,
      height: 50.0,
      minWidth: 150.0,
      onPressed: onPressed,
      child: Text(
        "LOGIN",
        style: sizeTextWhite,
      ),
    );
  }
}
