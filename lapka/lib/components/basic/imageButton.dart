import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class ImageButton extends StatelessWidget{
  final Function() onPressed;
  final Widget trailling;
  final String text;
  final Color color;

  const ImageButton({
    required this.onPressed,
    required this.trailling,
    this.text = '',
    this.color = BasicColors.darkGreen
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16),),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text == ''?
                Container():
                BasicText.subtitle(text, color: BasicColors.white,),
            text == ''?
                Container():
                SizedBox(width: 8,),
            trailling
          ],
        ),
      ),
    );
  }
}

