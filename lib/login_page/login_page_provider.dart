import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_task/login_page/login_page_model.dart';
import 'package:test_task/main_provider.dart';

class LoginPageProvider extends ChangeNotifier {
  LoginPageProvider({required this.context});

  final BuildContext context;

  final _formKey = GlobalKey<FormState>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  get formKey {
    return _formKey;
  }

  get scaffoldMessengerKey {
    return _scaffoldMessengerKey;
  }

  final _model = LoginPageModel();

  void submit() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      //FUTURE Develop authentification
      //START HARDCODE
      String adminEmail = 'admin@magnusvw.com';
      String adminPassword = '1';

      if (_model.email == adminEmail && _model.password == adminPassword) {
        performLogin();
      } else {
        scaffoldMessengerKey.currentState!.showSnackBar(
            const SnackBar(content: Text("Incorrect Email or Password")));
      }
      //END HARDCODE
    }
    notifyListeners();
  }

  void performLogin() {
    Provider.of<MainProvider>(context, listen: false).isLogged = true;
    SystemChannels.textInput.invokeMethod("TextInput.hide");
    GoRouter.of(context).go("/listview");
  }

  void onSavedEmail(String? value) {
    if (value != null) _model.email = value;
  }

  String? validateEmail(String? value) {
    if (value != null) {
      return !(value.contains('@') && value.contains('.'))
          ? 'Invalid email'
          : null;
    }
    return null;
  }

  void onSavedPassword(String? value) {
    if (value != null) _model.password = value;
  }
}
