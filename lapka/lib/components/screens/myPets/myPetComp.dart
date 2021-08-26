import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/roundedImage.dart';
import 'package:lapka/components/basic/textButton.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/requestSettings.dart';
import 'package:lapka/utils/dateHelper.dart';

class MyPetComp extends StatelessWidget {
  Pet pet;

  MyPetComp({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            child: ImageFromUrl(imageUrl: imagesUrl + 'api/files/${pet.mainPhotoPath}', height: 60)),
        SizedBox(height: 0, width: 16,),
        Container(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicText.heading20Bold(pet.name!),
                    SvgPicture.asset('lib/assets/three-dots.svg', color: BasicColors.darkGrey,)
                  ],
                ),
                SizedBox(height: 5, width: 1,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         SizedBox(height: 1, width: 1,),
                          Row(
                            children: [
                              pet.sex != 1 ? SvgPicture.asset('lib/assets/male-symbol.svg', height: 18, width: 18) : SvgPicture.asset('lib/assets/female-symbol.svg', height: 18, width: 18),
                              SizedBox(width: 4, height: 0),
                              BasicText.body14Light(pet.race!),
                            ],
                          ),
                          SizedBox(width: 1, height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SvgPicture.asset('lib/assets/calendar-icon.svg', height: 14, width: 14),
                                    SizedBox(width: 8, height: 0),
                                    BasicText.body14Light(DateTimeHelper.getDuration(pet.birthDay!).toString() + (DateTimeHelper.getDuration(pet.birthDay!) == 1? ' rok' : ' lata')),
                                  ],
                                ),
                              ),
                              BasicTextButton(onPressed: (){print('ravioli');}, text: 'Książeczka zdrowia', underline: true)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}