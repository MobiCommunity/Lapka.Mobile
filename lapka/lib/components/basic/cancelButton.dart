import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class CancelButton extends StatelessWidget{
  final Function() onPressed;
  final double size;

  const CancelButton({
    required this.onPressed,
    this.size = 44
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(color: BasicColors.lightGreen, shape: BoxShape.circle,),
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset('lib/assets/x-sign.svg',color: BasicColors.white,),
      ),
    );
  }
}

