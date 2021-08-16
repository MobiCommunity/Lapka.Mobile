import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class ShelterComp extends StatelessWidget {
  final String shelterName;
  final String upperText;
  final String lowerText;
  final Widget logoWidget;

  ShelterComp({required this.shelterName, required this.logoWidget, required this.upperText, required this.lowerText,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: BasicColors.white,),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            logoWidget,
            SizedBox(height: 1, width: 11,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BasicText.body14Bold(shelterName),
                SizedBox(height: 7, width: 1,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('lib/assets/geo-sign.svg'),
                    SizedBox(height: 1, width: 4,),
                    Column(
                      children: [
                        SizedBox(height: 1, width: 1,),
                        BasicText.body14Light(upperText),
                        BasicText.body14Bold(lowerText)
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}