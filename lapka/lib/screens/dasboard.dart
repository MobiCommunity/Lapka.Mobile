import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class Dashboard extends StatelessWidget {
  final bool isCollapsed;
  final double screenWidth;
  final Duration duration;
  final Animation<double> scaleAnimation;
  final Widget child;

  const Dashboard(
      {Key? key,
      required this.isCollapsed,
      required this.screenWidth,
      required this.duration,
      required this.scaleAnimation,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.6 * screenWidth,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Container(
                    color: BasicColors.white.withOpacity(0.2),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: isCollapsed ? 0 : 20),
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(isCollapsed ? 0 : 30)),
                  child: child),
            ),
          ],
        ),
      ),
    );
  }
}
