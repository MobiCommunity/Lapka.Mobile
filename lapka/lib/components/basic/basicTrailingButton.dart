import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/texts.dart';

class BasicTrailingButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color iconColor;
  final IconData icon;
  final Function() onPressed;

  const BasicTrailingButton({ 
    Key? key,
    this.text= "",
    this.color = BasicColors.lightGreen,
    this.iconColor= BasicColors.white,
    required this.onPressed ,
    required this.icon
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(16))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text.isNotEmpty ? BasicTexts.buttonWhite(text) : Container(),
                text.isNotEmpty ? SizedBox(width: 8,): Container(),
                Icon(icon, color: iconColor, size: 18,)
              ],
            )
          ),
      ),
    );
  }
}