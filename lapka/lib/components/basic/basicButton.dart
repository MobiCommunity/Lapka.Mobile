import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class BasicButton extends StatelessWidget {
  final String? text;
  final Color color;
  final Color? textColor;
  final Function() onPressed;

  const BasicButton({ 
    Key? key,
    this.text,
    this.color = BasicColors.lightGreen,
    this.textColor,
    required this.onPressed 
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
                BasicText.subtitle(text!,color: BasicColors.white)
              ],
            )
          ),
      ),
    );
  }
}
