import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class ImageButton extends StatelessWidget{
  final Function() onPressed;
  final Widget child;

  const ImageButton({
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(color: BasicColors.lightGreen, borderRadius: BorderRadius.circular(16),),
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}

