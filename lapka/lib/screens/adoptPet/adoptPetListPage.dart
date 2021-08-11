import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/screens/petCard.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetListPage extends StatelessWidget {
  const AdoptPetListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          transparent: true,
          title: "Example",
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                toolbarHeight: 250,
                backgroundColor: Colors.transparent,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: BasicColors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 33.0),
                          child: Container(
                            height: 100,
                            color: Colors.transparent,
                          ),
                        ),
                        Container(
                          height: 100,
                          color: Colors.transparent,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            color: BasicColors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
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
                  PetCard(pet: Pet()),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
