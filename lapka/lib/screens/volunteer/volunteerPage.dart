import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/screens/adoptPet/shelterComp.dart';
import 'package:lapka/screens/volunteer/volunteerDetailsPage.dart';
import 'package:lapka/settings/colors.dart';

class VolunteerPage extends StatelessWidget {
  VolunteerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: 'Wolontariat',
          fade: true,
        ),
        body: CustomScrollView(
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
                          shelterName: 'Psiaki Adopciaki z Psiej Wioski',
                          logoWidget: Container(
                              width: 60,
                              height: 65,
                              decoration: BoxDecoration(
                                color: BasicColors.lightGrey,
                              )),
                          upperText: '(2.5 km) Rzeszów',
                          lowerText: 'ul. Krakowska 12'),
                    ),
                  ),
                );
              }, childCount: 20),
            ),
          ],
        ));
  }
}
