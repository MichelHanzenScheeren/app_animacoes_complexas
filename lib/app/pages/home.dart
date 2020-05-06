import 'package:appanimacoescomplexas/app/commonWidgets/gradientContainer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(),
                SizedBox(height: 15),
                TextFormField(),
                SizedBox(height: 30),
                RaisedButton(onPressed: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
