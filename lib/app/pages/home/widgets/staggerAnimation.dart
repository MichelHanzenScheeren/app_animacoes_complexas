import 'package:appanimacoescomplexas/app/pages/home/widgets/animatedListView.dart';
import 'package:appanimacoescomplexas/app/pages/home/widgets/homeTop.dart';
import 'package:appanimacoescomplexas/app/widgets/gradientContainer.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final String username;
  final Animation<double> curvedAnimation;
  final Animation<EdgeInsets> positionAnimation;
  StaggerAnimation({@required this.controller, @required this.username})
      : curvedAnimation = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        ),
        positionAnimation = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.4, 1, curve: Curves.ease),
          ),
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
                AnimatedListView(animation: positionAnimation),
              ],
            );
          },
        ),
      ),
    );
  }
}
