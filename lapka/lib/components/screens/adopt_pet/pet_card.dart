import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/rounded_image.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/screens/adopt_pet/adopt_pet_details.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:lapka/settings/request_settings.dart';
import 'package:lapka/utils/check_conectivity.dart';
import 'package:lapka/utils/date_helper.dart';

enum PetCardType { adopt, lost, liked }

class PetCard extends StatelessWidget {
  final Pet pet;
  final VoidCallback onLikeDislikeCallback;
  final PetCardType petCardType;
  const PetCard({
    Key? key,
    required this.pet,
    required this.onLikeDislikeCallback,
  })  : petCardType = PetCardType.liked,
        super(key: key);

  const PetCard.adopt({
    Key? key,
    required this.pet,
    required this.onLikeDislikeCallback,
  })  : petCardType = PetCardType.adopt,
        super(key: key);

  const PetCard.lost({
    Key? key,
    required this.pet,
    required this.onLikeDislikeCallback,
  })  : petCardType = PetCardType.lost,
        super(key: key);

  static const _heartFilledIcon = const Icon(
    Icons.favorite,
    color: BasicColors.white,
    size: 16,
  );

  static const _heartOutlinedIcon = const Icon(
    Icons.favorite_outline,
    color: BasicColors.white,
    size: 16,
  );

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
          Stack(
            children: [
              ImageFromUrl(
                imageUrl: imagesUrl + 'api/files/${pet.mainPhotoPath}',
                height: 170,
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(4),
                child: RawMaterialButton(
                  shape: CircleBorder(),
                  onPressed: onLikeDislikeCallback,
                  constraints: BoxConstraints.tightFor(
                    height: 48,
                    width: 48,
                  ),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: new BoxDecoration(
                      color: BasicColors.darkGrey.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child:
                          pet.isLiked ? _heartFilledIcon : _heartOutlinedIcon,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                            color: BasicColors.lightGreen,
                            width: 30,
                            height: 30,
                          )
                        : SvgPicture.asset(
                            'lib/assets/male-symbol.svg',
                            color: BasicColors.lightGreen,
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
                        size: 14, color: BasicColors.lightGreen),
                    SizedBox(
                      width: 8,
                    ),
                    BasicText.body14Light(
                        age.toString() + (age == 1 ? ' rok' : ' lata'))
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on,
                        size: 14, color: BasicColors.lightGreen),
                    SizedBox(
                      width: 8,
                    ),
                    // BasicText.body14Light('${pet.shelterAddress!.name}, ${pet.shelterAddress!.city} ('
                    //     + LocationHelper.getDistance(context.read<LocationProvider>().position,
                    //                         pet.shelterAddress!.geoLocation!).toStringAsFixed(1)
                    //     +
                    //     'km)'),
                  ],
                ),
                SizedBox(height: 22),
              ],
            ),
          ),
          Visibility(
            visible: petCardType != PetCardType.liked,
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                  color: BasicColors.darkGreen,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
              child: InkWell(
                onTap: () async {
                  if (await InternetConectivity.check(context)) {
                    NavigatorHelper.push(context, AdoptPetDetails(id: pet.id!));
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BasicText.subtitleBold(
                      getTextFromEnum,
                      color: BasicColors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(Icons.pets, color: BasicColors.white, size: 20)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String get getTextFromEnum {
    if (petCardType == PetCardType.adopt) {
      return "Poznaj mnie";
    } else {
      return "Widziałem to zwierzę";
    }
  }
}
