import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/screens/adoptPet/shelterComp.dart';
import 'package:lapka/settings/colors.dart';

class VolunteerDetailsPage extends StatelessWidget {
  const VolunteerDetailsPage({Key? key}) : super(key: key);

  Widget _smallLineSpacer() {
    return Container(
      height: 1,
      color: BasicColors.lightGrey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: 'Wolontariat',
          fade: true,
          showBack: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 33,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(33),
                        topLeft: Radius.circular(33)),
                    color: BasicColors.grey),
              ),
              Container(
                color: BasicColors.grey,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ShelterComp(
                        shelterName: 'Psiaki Adopciaki z Psiej Wioski',
                        logoWidget: Container(
                            width: 60,
                            height: 65,
                            decoration: BoxDecoration(
                              color: BasicColors.lightGrey,
                            )),
                        upperText: '(2.5 km) Rzeszów',
                        lowerText: 'ul. Krakowska 12'),
                    SizedBox(
                      height: 20,
                    ),
                    _smallLineSpacer(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(33)),
                          color: BasicColors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
