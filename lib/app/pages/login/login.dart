import 'package:appanimacoescomplexas/app/pages/login/loginForm.dart';
import 'package:appanimacoescomplexas/app/widgets/gradientContainer.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: LoginForm(),
            ),
          ),
        ),
      ),
    );
  }
}
