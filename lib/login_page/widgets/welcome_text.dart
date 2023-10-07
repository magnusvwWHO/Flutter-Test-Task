import 'package:flutter/material.dart';
import '../style.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Welcome to the ",
          style: sizeTextLabel,
        ),
        Text(
          "meow ",
          style: sizeTextMeow,
        ),
        Text(
          "page",
          style: sizeTextLabel,
        )
      ],
    );
  }
}
