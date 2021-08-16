import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/roundedImage.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/requestSettings.dart';
import 'package:lapka/utils/checkConectivity.dart';
import 'package:lapka/utils/dateHelper.dart';
import 'package:lapka/utils/locationHelper.dart';
import 'package:provider/provider.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  const PetCard({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int age = DateTimeHelper.getDuration(pet.birthDay!); 
    return Container(
      decoration: BoxDecoration(
        color: BasicColors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Stack(children: [
            ImageFromUrl(imageUrl: imagesUrl + 'api/files/${pet.mainPhotoPath}', height: 170),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(16),
              child: Container(
                height: 32,
                width: 32,
                decoration: new BoxDecoration(
                  color: BasicColors.darkGrey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Icon(
                  Icons.favorite,
                  color: BasicColors.white,
                  size: 16,
                )),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicText.heading1Bold(pet.name ?? 'Nieznane'),
                    pet.sex == true
                        ? SvgPicture.asset(
                            'lib/assets/famale-symbol.svg',
                            color: BasicColors.darkGreen,
                            width: 30,
                            height: 30,
                          )
                        : SvgPicture.asset(
                            'lib/assets/male-symbol.svg',
                            color: BasicColors.darkGreen,
                            width: 30,
                            height: 30,
                          )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: BasicText.subtitleLight(pet.race ?? "Nieznane")),
                SizedBox(height: 14),
                Row(
                  children: [
                    Icon(Icons.date_range,
                        size: 14, color: BasicColors.darkGreen),
                    SizedBox(
                      width: 8,
                    ),
                    BasicText.body14Light(age.toString() + (age == 1 ?' rok' : ' lata'))
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on,
                        size: 14, color: BasicColors.darkGreen),
                    SizedBox(
                      width: 8,
                    ),
                    BasicText.body14Light('${pet.shelterAddress!.name}, ${pet.shelterAddress!.city} ('
                        + LocationHelper.getDistance(context.read<LocationProvider>().position, 
                                            pet.shelterAddress!.geoLocation!).toStringAsFixed(1)
                        +
                        'km)'),
                  ],
                ),
                SizedBox(height: 22),
              ],
            ),
          ),
          Container(
            height: 42,
            decoration: BoxDecoration(
                color: BasicColors.lightGreen,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14))),
            child: InkWell(
              onTap: () async{
                if(await InternetConectivity.check(context))
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdoptPetDetails(id: pet.id!)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BasicText.subtitleBold(
                    "Poznaj mnie",
                    color: BasicColors.white,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Icon(Icons.pets, color: BasicColors.white, size: 20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
