import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class CancelButton extends StatelessWidget{
  final Function() onPressed;

  const CancelButton({
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(color: BasicColors.lightGreen, shape: BoxShape.circle,),
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset('lib/assets/xsign.svg',color: BasicColors.white,),
      ),
    );
  }
}

