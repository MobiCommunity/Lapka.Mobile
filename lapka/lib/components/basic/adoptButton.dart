import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

import 'basicText.dart';

class AdoptButton extends StatelessWidget{
  final Function() onPressed;

  const AdoptButton({
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 52,
        decoration: BoxDecoration(color: BasicColors.darkGreen, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BasicText.subtitle('ADOPTUJ', color: BasicColors.white,),
            SizedBox(width:8, height: 1,),
            SvgPicture.asset('lib/assets/pawSymbol.svg', color: BasicColors.white,),
          ],
        ),
      ),
    );
  }
}

