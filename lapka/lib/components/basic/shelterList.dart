import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/components/basic/shelterComp.dart';

class ShelterList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(
            topLeft:  const  Radius.circular(33.0),
            topRight: const  Radius.circular(33.0),
        ),
          color:BasicColors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          child: Column(
            children: [
              ShelterComp(shelterName: 'Psiaki Adopciaki z Psiej Wioski', logoWidget: Container(width: 60, height: 65, decoration: BoxDecoration( color: BasicColors.lightGrey,)), upperText: '(2.5 km) Rzeszów', lowerText: 'ul. Krakowska 12'),
              SizedBox(height: 16, width: 1,),
              ShelterComp(shelterName: 'Psiaki Adopciaki z Psiej Wioski', logoWidget: Container(width: 60, height: 65, decoration: BoxDecoration( color: BasicColors.lightGrey,)), upperText: '(2.5 km) Rzeszów', lowerText: 'ul. Krakowska 12'),
              SizedBox(height: 16, width: 1,),
              ShelterComp(shelterName: 'Psiaki Adopciaki z Psiej Wioski', logoWidget: Container(width: 60, height: 65, decoration: BoxDecoration( color: BasicColors.lightGrey,)), upperText: '(2.5 km) Rzeszów', lowerText: 'ul. Krakowska 12'),
              SizedBox(height: 16, width: 1,),
              ShelterComp(shelterName: 'Psiaki Adopciaki z Psiej Wioski', logoWidget: Container(width: 60, height: 65, decoration: BoxDecoration( color: BasicColors.lightGrey,)), upperText: '(2.5 km) Rzeszów', lowerText: 'ul. Krakowska 12'),
            ],
          ),
        ),
        ),
    );
  }
}
