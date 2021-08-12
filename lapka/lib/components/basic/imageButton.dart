import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class ImageButton extends StatelessWidget{
  final Function() onPressed;
  //final bool customTrailling;
  //final Widget img;
  final Widget trailling;
  final String text;

  const ImageButton({
    required this.onPressed,
    //this.customTrailling = false,
    required this.trailling,
    //required this.img,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(color: BasicColors.lightGreen, borderRadius: BorderRadius.circular(16),),
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

