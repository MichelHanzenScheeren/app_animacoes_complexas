import 'package:appanimacoescomplexas/app/pages/login/CreateAccountButton.dart';
import 'package:appanimacoescomplexas/app/pages/login/forgetPasswordButton.dart';
import 'package:appanimacoescomplexas/app/pages/login/loginButton.dart';
import 'package:appanimacoescomplexas/app/pages/login/loginFormField.dart';
import 'package:appanimacoescomplexas/app/validators/emailValidate.dart';
import 'package:appanimacoescomplexas/app/validators/passwordValidate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.person_pin, size: 160),
          SizedBox(height: 10),
          LoginFormField(
            text: "E-mail",
            icon: Icons.alternate_email,
            type: TextInputType.emailAddress,
            validator: emailValidate,
          ),
          SizedBox(height: 10),
          LoginFormField(
            text: "Password",
            icon: Icons.lock_outline,
            controller: passwordController,
            obscureTextControl: true,
            validator: passwordValidate,
          ),
          ForgetPasswordButton(),
          SizedBox(height: 20),
          LoginButton(doLogin),
          SizedBox(height: 40),
          CreateAccountButton(),
        ],
      ),
    );
  }

  void doLogin() {
    if (formKey.currentState.validate()) {
      print("Login concluído!");
    } else {}
  }
}
