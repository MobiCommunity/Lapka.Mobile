import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:intl/intl.dart';
import 'package:lapka/components/basic/greyBox.dart';

class BasicPetInfoRow extends StatelessWidget {
  final DateTime age;
  final String petColor;
  final double weight;
  final bool sterile;

  BasicPetInfoRow({required this.age, required this.petColor, required this.weight, required this.sterile});

  @override
  Widget build(BuildContext context) {
    String dak = DateFormat('yyyy').format(age);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GreyBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                BasicText.body14Bold(dak),
                BasicText.captionLight('Wiek')
              ]
            ),
          ),
          SizedBox(width: 8, height: 1,),
          GreyBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BasicText.body14Bold(petColor),
                BasicText.captionLight('Kolor')
              ],
            ),
          ),
          SizedBox(width: 8, height: 1,),
          GreyBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BasicText.body14Bold(weight.toStringAsFixed(1)),
                BasicText.captionLight('Waga')
              ],
            ),
          ),
          SizedBox(width: 8, height: 1,),
          GreyBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BasicText.body14Bold(sterile==true?'Tak':'Nie'),
                BasicText.captionLight('Sterylizacja')
              ],
            ),
          ),
        ],
      ),
    );
  }
}