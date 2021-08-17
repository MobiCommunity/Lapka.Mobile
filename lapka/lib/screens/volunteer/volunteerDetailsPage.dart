import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/screens/adoptPet/shelterComp.dart';
import 'package:lapka/components/screens/volunteer/suportShelterCard.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/locationHelper.dart';
import 'package:provider/provider.dart';

class VolunteerDetailsPage extends StatelessWidget {
  final Shelter data;
  const VolunteerDetailsPage({Key? key, required this.data}) : super(key: key);

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
                        shelterName: data.name!,
                        logoWidget: Container(
                            width: 60,
                            height: 65,
                            decoration: BoxDecoration(
                              color: BasicColors.lightGrey,
                            )),
                        upperText: '('+LocationHelper.getDistance(
                                      context.read<LocationProvider>().position,
                                      data.address!.geoLocation!)
                                  .toStringAsFixed(1)+' km) ${data.address!.city}',
                        lowerText: 'ul. ${data.address!.street}'),
                    SizedBox(
                      height: 20,
                    ),
                    _smallLineSpacer(),
                    SizedBox(
                      height: 20,
                    ),
                    SupportSchelterCard(),
                    SizedBox(
                      height: 16,
                    ),
                    SupportSchelterCard(),
                    SizedBox(
                      height: 16,
                    ),
                    SupportSchelterCard(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
