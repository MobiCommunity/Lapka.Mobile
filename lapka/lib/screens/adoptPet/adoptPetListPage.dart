import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/infOwner.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/components/screens/petCard.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetListPage extends StatelessWidget {
  const AdoptPetListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BasicColors.white,
        appBar: CustomAppBar(
          title: "Example",
        ),
        body: Container(
          decoration: BoxDecoration(
            color: BasicColors.grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(33), topRight: Radius.circular(33)),
          ),
          child: Padding(
              padding: const EdgeInsets.only(top: 33, left: 20, right: 20),
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      print(1);
                      BasicDialog.showDialog(
                          context,
                          InfOwner(
                            petImg: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: BasicColors.darkGrey,
                                    shape: BoxShape.circle)),
                            number: 512643432,
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: PetCard(pet: Pet()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: PetCard(pet: Pet()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: PetCard(pet: Pet()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: PetCard(pet: Pet()),
                  ),
                ],
              )),
        ));
  }
}
