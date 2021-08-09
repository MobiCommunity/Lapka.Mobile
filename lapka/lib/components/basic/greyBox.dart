import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';


class GreyBox extends StatelessWidget{
  final Widget child;
  GreyBox({required this.child});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //width: 70,
        height: 49,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: BasicColors.lightGrey)
        ),
        child: child,
      ),
    );
  }
}