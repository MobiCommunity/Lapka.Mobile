import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/imageButton.dart';
import 'package:lapka/components/screens/adoptPet/basicPetInfoRow.dart';
import 'package:lapka/components/basic/loadingIndicator.dart';
import 'package:lapka/components/basic/roundedImage.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/components/basic/imageCarusel.dart';
import 'package:lapka/components/dialogs/helpDialog.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/adoptPetProvider.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/components/dialogs/loginDialog.dart';
import 'package:lapka/screens/login/loginPage.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/locationHelper.dart';
import 'package:provider/provider.dart';
import 'package:lapka/settings/requestSettings.dart';

class AdoptPetDetails extends StatelessWidget {
  String id;
  AdoptPetDetails({Key? key, required this.id}) : super(key: key);

  _share() {
    throw UnimplementedError();
  }

  _like() {
    throw UnimplementedError();
  }

  _adopt(context) {

    BasicDialog.showDialog(context, LoginDialog(onExit: () {
      Navigator.pop(context);
    }, onLogin: () {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LoginPage()),
    );
    }));
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
      body: FutureBuilder<Pet>(
          future: context.read<AdoptPetProvider>().getPetDetails(id),
          builder: (context1, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return LoadingIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Error');
              } else if (snapshot.hasData) {
                return Column(
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
                                    ImageFromUrl( imageUrl: imagesUrl  + 'api/files/${snapshot.data!.mainPhotoPath}',height: 300,rounded: false,),
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
                                      color:
                                          BasicColors.darkGrey.withOpacity(0.5),
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
                          padding: const EdgeInsets.only(
                              top: 255, left: 20, right: 20),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BasicText.heading1Bold(
                                          snapshot.data!.name ?? 'Nieznane'),
                                      BasicText.subtitleLight(
                                          snapshot.data!.race ?? 'Nieznana')
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(right: 18),
                                  child: snapshot.data!.sex == false
                                      ? SvgPicture.asset(
                                          'lib/assets/male-symbol.svg',
                                          color: BasicColors.darkGreen,
                                          width: 55,
                                          height: 55,
                                        )
                                      : SvgPicture.asset(
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
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: BasicColors.darkGrey,
                                      shape: BoxShape.circle),
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
                                        snapshot.data!.shelterAddress!.name!),
                                    BasicText.body14Bold(
                                      '${snapshot.data!.shelterAddress!.city} ' +
                                          'ul.${snapshot.data!.shelterAddress!.street} (' +
                                         LocationHelper.getDistance(context.read<LocationProvider>().position, 
                                            snapshot.data!.shelterAddress!.geoLocation!).toStringAsFixed(1)+
                                          ' km)',
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
                                age: snapshot.data!.birthDay!,
                                petColor: snapshot.data!.color!,
                                weight: snapshot.data!.weight!,
                                sterile: snapshot.data!.sterilization!),
                            SizedBox(
                              height: 23,
                              width: 1,
                            ),
                            BasicText.subtitleBigBold('Podstawowe informacje'),
                            SizedBox(
                              height: 8,
                              width: 1,
                            ),
                            BasicText.body14Light(snapshot.data!.description!),
                            SizedBox(
                              height: 14,
                              width: 1,
                            ),
                            Row(
                              children: [
                                ImageButton(
                                  onPressed: () {
                                    BasicDialog.showDialog(context, HelpDialog(accountNumber: '1122223333444455556666'));
                                  },
                                  trailling: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: InkWell(
                                          onTap: _like,
                                          child: SvgPicture.asset(
                                              'lib/assets/heart-icon.svg',
                                              color: BasicColors.white))),
                                ),
                                SizedBox(
                                  width: 20,
                                  height: 1,
                                ),
                                Expanded(
                                  child: ImageButton(
                                      onPressed: () {
                                        _adopt(context);
                                      },
                                      trailling: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          child: SvgPicture.asset(
                                              'lib/assets/paw-symbol.svg',
                                              color: BasicColors.white)),
                                      text: 'Adoptuj'),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ],
                );
              } else {
                return const Text('Empty data');
              }
            } else {
              return Text('');
            }
          }),
    );
  }
}
