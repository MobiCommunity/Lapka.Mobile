import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/loadingIndicator.dart';
import 'package:lapka/components/screens/adoptPet/shelterComp.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/providers/shelterProvider.dart';
import 'package:lapka/screens/volunteer/volunteerDetailsPage.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/locationHelper.dart';
import 'package:provider/provider.dart';

class VolunteerPage extends StatefulWidget {
  VolunteerPage({Key? key}) : super(key: key);

  @override
  _VolunteerPageState createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {

@override
  void initState() {
    context.read<ShelterProvider>().getAllShelters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: 'Wolontariat',
          fade: true,
        ),
        body: context.watch<ShelterProvider>().status == ShelterStatus.Done ? CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 33,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(33),
                          topLeft: Radius.circular(33)),
                      color: BasicColors.grey),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                Shelter shelter = context.watch<ShelterProvider>().shelters[index];
                return Container(
                  color: BasicColors.grey,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VolunteerDetailsPage()));
                      },
                      child: ShelterComp(
                          shelterName: shelter.name!,
                          logoWidget: Container(
                              width: 60,
                              height: 65,
                              decoration: BoxDecoration(
                                color: BasicColors.lightGrey,
                              )),
                          upperText: '(' +LocationHelper.getDistance(context.read<LocationProvider>().position, shelter.address!.geoLocation!).toStringAsFixed(1)+'km) ${shelter.address!.city}',
                          lowerText: 'ul. ' + shelter.address!.street!),
                    ),
                  ),
                );
              }, childCount: context.watch<ShelterProvider>().shelters.length),
            ),
          ],
        ): LoadingIndicator());
  }
}
