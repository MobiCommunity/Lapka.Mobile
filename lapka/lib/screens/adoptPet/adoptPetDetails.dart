import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/imageButton.dart';
import 'package:lapka/components/basic/basicPetInfoRow.dart';
import 'package:lapka/components/imageCarusel.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetDetails extends StatelessWidget {
  Pet pet;
  AdoptPetDetails({Key? key, required this.pet}) : super(key: key);

  _share() {
    throw UnimplementedError();
  }

  _like() {
    throw UnimplementedError();
  }

  _adopt() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        showBack: true,
        customTrailling: true,
        trailling: InkWell(
            onTap: _share,
            child: SvgPicture.asset('lib/assets/download-sign.svg')),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        child: ImageCarusel(images: [
                          Container(
                            color: Colors.grey,
                          ),
                          Container(
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          Container(
                            color: Colors.grey,
                          ),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 197, right: 20),
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: new BoxDecoration(
                            color: BasicColors.darkGrey.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.photo_camera,
                            color: BasicColors.white,
                            size: 24,
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 255, left: 20, right: 20),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: BasicColors.shadow,
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(2, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BasicText.heading1Bold(pet.name != null ? pet.name! : 'Nieznane'),
                            BasicText.subtitleLight(pet.race != null ? pet.race! : 'Nieznana' )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 18),
                        child: pet.sex == true ? SvgPicture.asset(
                          'lib/assets/male-symbol.svg',
                          color: BasicColors.darkGreen,
                          width: 55,
                          height: 55,
                        ): SvgPicture.asset(
                          'lib/assets/famale-symbol.svg',
                          color: BasicColors.darkGreen,
                          width: 55,
                          height: 55,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 1, height: 36),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: BasicColors.darkGrey, shape: BoxShape.circle),
                    width: 40,
                    height: 43,
                  ),
                  SizedBox(
                    height: 1,
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BasicText.body14Light(
                          'Psiaki Adopciaki z Schroniska Pudelek'),
                      BasicText.body14Bold(
                        'Rzeszów ul. Krakowska 12 (2.5 km)',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
                width: 1,
              ),
              BasicPetInfoRow(
                  age: DateTime(10 - 10 - 2010),
                  petColor: 'Czarny',
                  weight: 12.0,
                  sterile: true),
              SizedBox(
                height: 23,
                width: 1,
              ),
              BasicText.subtitleBigBold('Podstawowe informacje'),
              SizedBox(
                height: 8,
                width: 1,
              ),
              BasicText.body14Light(
                  'Moniak jest wspaniałym i pełnym miłości pieskiem. Bardzo dobrze znosi towarzystwo innych zwierząt, a szczególne relacje nawiązuje z kotami. Z racji swojej postury jest troszkę nerwowy i chałaśliwy, ale odwdzięcza to wielkim sercem - szczególnie do właścicieli. Moniak jest pieskiem, którego pokochają dzieci. Pomimo temperamentnego charakterku Moniak jest bardzo grzeczny na spacerach.'),
              SizedBox(
                height: 14,
                width: 1,
              ),
              Row(
                children: [
                  ImageButton(
                    onPressed: () {
                      print('adsdasd');
                    },
                    trailling: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                            onTap: _like,
                            child: SvgPicture.asset('lib/assets/heart-icon.svg',
                                color: BasicColors.white))),
                  ),
                  SizedBox(
                    width: 20,
                    height: 1,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: _adopt,
                      child: ImageButton(
                          onPressed: () {
                            print('adsdasd');
                          },
                          trailling: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: SvgPicture.asset(
                                  'lib/assets/paw-symbol.svg',
                                  color: BasicColors.white)),
                          text: 'Adoptuj'),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
