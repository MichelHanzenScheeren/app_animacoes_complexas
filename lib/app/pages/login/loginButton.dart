import 'package:appanimacoescomplexas/app/themes/personalTheme.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function doLogin;
  LoginButton(this.doLogin);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      color: Color.fromRGBO(76, 43, 136, 0.8),
      child: MaterialButton(
        padding: EdgeInsets.all(20),
        onPressed: doLogin,
        child: Text("ENTRAR", style: personalButtonTextStyle()),
      ),
    );
  }
}
