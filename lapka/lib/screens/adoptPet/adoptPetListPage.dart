import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/screens/petCard.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetListPage extends StatelessWidget {
  const AdoptPetListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicColors.white,
      appBar: CustomAppBar(title: "Example",),
      body: Container(
        decoration: BoxDecoration(
          color: BasicColors.grey,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(33), topRight: Radius.circular(33)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 33, left: 20, right: 20),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  print(1);
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetCard())
                );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom : 16.0),
                  child: PetCard(),
                ),
              ),Padding(
                padding: const EdgeInsets.only(bottom : 16.0),
                child: PetCard(),
              ),Padding(
                padding: const EdgeInsets.only(bottom : 16.0),
                child: PetCard(),
              ),Padding(
                padding: const EdgeInsets.only(bottom : 16.0),
                child: PetCard(),
              ),
              
            ],
          )
        ),
      )
    );
  }
}