import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class BasicTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  bool underline;
  final Color textColor;

  BasicTextButton(
      {required this.onPressed,
      required this.text,
      this.underline = false,
      this.textColor = BasicColors.lightGreen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Text(text,
            style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                decoration:
                    underline == true ? TextDecoration.underline : null)));
  }
}
