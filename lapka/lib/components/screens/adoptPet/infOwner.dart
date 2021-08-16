import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/settings/colors.dart';

class InfOwner extends StatelessWidget{
  final Widget petImg;
  final int number;

  const InfOwner({required this.petImg, required this.number});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 11),
          child: Container(
            //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: BasicColors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    petImg,
                    SizedBox(width: 10,),
                    BasicText.body14Bold('Widziałem tego zwierzaka!')
                  ],
                ),
                BasicText.body14Bold('To zwierzę jest u mnie w domu'),
                SizedBox(height: 16),
                Container(height: 10, width: 10, color: BasicColors.darkGreen,),
                SizedBox(height: 22,),
                Container(height: 1, width: double.infinity, color: BasicColors.darkGrey,),
                SizedBox(height: 22,),
                BasicText.body14Bold('Kontakt do właściciela'),
                SizedBox(height: 4,),
                BasicText.body14Light('Ostatnia prosta! Dzięki Tobie Monia wkrótce wróci do domu. Skontaktuj się z właścicielem zwierzaka telefonicznie lub za pośrednictwem naszej aplikacji.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset('lib/assets/phone-icon.svg'),
                          SizedBox(width: 8),
                          BasicText.body14Light(number.toString()),
                        ],
                      ),
                    ),
                    BasicButton(onPressed: (){print('ravioli');}, text: 'NAPISZ WIADOMOŚĆ',),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          child: CancelButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}

