import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class GreyBox extends StatelessWidget {
  final Widget child;
  final double padding;
  GreyBox({required this.child, this.padding = 8});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: BasicColors.grey)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: padding),
          child: child,
        ),
      ),
    );
  }
}
