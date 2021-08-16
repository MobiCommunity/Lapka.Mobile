import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  final Function() onPressCallback;

  CustomCheckbox({required this.isChecked, this.size = 16,
  this.iconSize = 7, required this.onPressCallback});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}



class _CustomCheckboxState extends State<CustomCheckbox> {

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressCallback,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(color: BasicColors.lightGreen,)
        ),
        width: widget.size,
        height: widget.size,
        child: widget.isChecked ? Icon(
          Icons.brightness_1_rounded,
          color: BasicColors.lightGreen,
          size: widget.iconSize,
        ) : null,
      ),
    );
  }
}
