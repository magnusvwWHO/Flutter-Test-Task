import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/login_page/login_page_provider.dart';
import 'package:test_task/login_page/widgets/email_input_form.dart';
import 'package:test_task/login_page/widgets/password_input_form.dart';
import 'package:test_task/login_page/widgets/submit_button.dart';
import 'package:test_task/login_page/widgets/welcome_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginPageProvider(context: context),
      builder: (context, child) => ScaffoldMessenger(
        key: Provider.of<LoginPageProvider>(context).scaffoldMessengerKey,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 220, 250, 250),
          body: Consumer<LoginPageProvider>(
            builder: (context, loginPageProvider, child) => Center(
              child: Form(
                key: loginPageProvider.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ///
                    const WelcomeText(),

                    const SizedBox(height: 20.0),

                    EmailInputForm(
                        validator: loginPageProvider.validateEmail,
                        onSaved: loginPageProvider.onSavedEmail),

                    const SizedBox(
                      height: 10.0,
                    ),

                    PasswordInputForm(
                        onSaved: loginPageProvider.onSavedPassword),

                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: SubmitButton(onPressed: loginPageProvider.submit),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
