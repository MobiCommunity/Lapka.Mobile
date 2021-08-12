import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/screens/floatingBarScaffold.dart';
import 'package:lapka/components/screens/petCard.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetListPage extends StatelessWidget {
  const AdoptPetListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingBarScaffold(
      appbar: CustomAppBar(
          fade: true,
          title: "Example",
        ),
      headerSliver: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        decoration: BoxDecoration(
                          color: BasicColors.grey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(33),
                              topRight: Radius.circular(33)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 33.0),
                                child: Container(
                                  height: 100,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Container(
                                  height: 100,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
      body: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AdoptPetDetails(pet: Pet(),)));
                        },
                        child: PetCard(pet: Pet())),
                      SizedBox(
                        height: 16,
                      ),
                      PetCard(pet: Pet()),
                      SizedBox(
                        height: 16,
                      ),
                      PetCard(pet: Pet()),
                      SizedBox(
                        height: 16,
                      ),
                      PetCard(pet: Pet()),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
    );
  }
}