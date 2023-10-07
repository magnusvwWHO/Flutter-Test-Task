import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  bool _isLogged = false;

  get isLogged {
    return _isLogged;
  }

  set isLogged(dynamic value) {
    _isLogged = value;
  }
}
