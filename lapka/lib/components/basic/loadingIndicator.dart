import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class LoadingIndicator extends StatefulWidget {
  @override
  _LoadingIndicatorState createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();

  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: new Duration(seconds: 2), vsync: this);
    animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: animationController!
            .drive(ColorTween(begin: BasicColors.lightGreen, end: BasicColors.darkGreen)),
      ),
    );
  }
}
