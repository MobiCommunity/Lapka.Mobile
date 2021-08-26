import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/loadingIndicator.dart';
import 'package:lapka/components/screens/myPets/myPetComp.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/myPetsProvider.dart';
import 'package:lapka/settings/colors.dart';
import 'package:provider/provider.dart';

class MyPetsPage extends StatefulWidget {
  MyPetsPage({Key? key}) : super(key: key);

  @override
  _MyPetsPage createState() => _MyPetsPage();
}

class _MyPetsPage extends State<MyPetsPage> {
  @override
  void initState() {
    context.read<MyPetsProvider>().getAllPets();
    super.initState();
  }

  Widget _smallLineSpacer() {
    return Container(
      height: 1,
      color: BasicColors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: 'Moje zwierzaki',
          fade: true,
        ),
        body: Stack(
          children: [
            Container(margin: EdgeInsets.only(top: 133), color: BasicColors.lightGrey,),
            CustomScrollView(
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
                          color: BasicColors.lightGrey),
                    ),
                  ),
                ),
                _body(context, context.watch<MyPetsProvider>().status),
              ],
            ),
          ],
        ));
  }

  Widget _body(BuildContext context, MyPetsStatus status) {
    switch (status) {
      case MyPetsStatus.Done:
        return SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            Pet pet = context.watch<MyPetsProvider>().pets[index];
            return Container(
              color: BasicColors.lightGrey,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                //  child: InkWell(
                 // onTap: () {
                 //   Navigator.push(
                 //       context,
                  //      MaterialPageRoute(
                  //          builder: (context) => VolunteerDetailsPage(data: pet,)));
                 // },
                  child: Column(
                    children: [
                      MyPetComp(
                          pet: pet
                      ),
                      context.watch<MyPetsProvider>().pets.length-1 != index ? Padding(
                        padding: const EdgeInsets.only(left: 76, top: 24),
                        child: _smallLineSpacer(),
                      ) : Container(),
                    ],
                  ),
                //),

              ),
            );
          }, childCount: context.watch<MyPetsProvider>().pets.length),
        );
      case MyPetsStatus.Loading:
        return SliverToBoxAdapter(child: LoadingIndicator());
      case MyPetsStatus.Error:
        return SliverToBoxAdapter(
          child: Center(
            child: BasicText.body14('Wystąpił błąd...'),
          ),
        );
      case MyPetsStatus.New:
        return SliverToBoxAdapter(child: LoadingIndicator());
    }
  }
}