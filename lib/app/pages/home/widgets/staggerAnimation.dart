import 'package:appanimacoescomplexas/app/pages/home/widgets/homeTop.dart';
import 'package:appanimacoescomplexas/app/widgets/gradientContainer.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final String username;
  final Animation<double> curvedAnimation;
  StaggerAnimation({@required this.controller, @required this.username})
      : curvedAnimation = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                HomeTop(animation: curvedAnimation, username: username),
              ],
            );
          },
        ),
      ),
    );
  }
}
