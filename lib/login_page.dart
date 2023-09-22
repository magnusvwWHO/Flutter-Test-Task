import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_task/routes/router.gr.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  final String title = 'Login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  final _sizeTextMeow = const TextStyle(
      fontSize: 15.0, color: Colors.pink, fontStyle: FontStyle.italic);
  final _sizeTextLabel = const TextStyle(fontSize: 30.0, color: Colors.black);

  final _formKey = GlobalKey<FormState>();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  String email = "";
  String password = "";

  void submit() {
    setState(() {
      final form = _formKey.currentState!;
      if (form.validate()) {
        form.save();
        //FUTURE Develop authentification
        //START HARDCODE
        String adminEmail = 'admin@magnusvw.com';
        String adminPassword = '1';

        if (email == adminEmail && password == adminPassword) {
          performLogin();
        } else {
          scaffoldMessengerKey.currentState!.showSnackBar(
              const SnackBar(content: Text("Incorrect Email or Password")));
        }
        //END HARDCODE
      }
    });
  }

  void performLogin() {
    SystemChannels.textInput.invokeMethod("TextInput.hide");
    context.router.replace(const MainRoute());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ScaffoldMessenger(
            key: scaffoldMessengerKey,
            child: Scaffold(
                backgroundColor: const Color.fromARGB(255, 220, 250, 250),
                body: Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Welcome to the ",
                              style: _sizeTextLabel,
                            ),
                            Text(
                              "meow ",
                              style: _sizeTextMeow,
                            ),
                            Text(
                              "page",
                              style: _sizeTextLabel,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 400.0,
                          child: TextFormField(
                              decoration:
                                  const InputDecoration(labelText: "Email"),
                              keyboardType: TextInputType.emailAddress,
                              style: _sizeTextBlack,
                              onSaved: (value) {
                                if (value != null) email = value;
                              },
                              validator: (value) {
                                if (value != null) {
                                  return !(value.contains('@') &&
                                          value.contains('.'))
                                      ? 'Invalid email'
                                      : null;
                                }
                                return null;
                              }),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 400.0,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Password"),
                            obscureText: true,
                            style: _sizeTextBlack,
                            onSaved: (value) {
                              if (value != null) password = value;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: MaterialButton(
                            color: Colors.black54,
                            height: 50.0,
                            minWidth: 150.0,
                            onPressed: submit,
                            child: Text(
                              "LOGIN",
                              style: _sizeTextWhite,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))));
  }
}
