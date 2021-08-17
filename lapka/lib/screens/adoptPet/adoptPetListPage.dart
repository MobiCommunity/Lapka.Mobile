import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/loadingIndicator.dart';
import 'package:lapka/components/screens/adoptPet/inputFilter.dart';
import 'package:lapka/components/basic/floatingBarScaffold.dart';
import 'package:lapka/components/screens/adoptPet/petCard.dart';
import 'package:lapka/components/screens/adoptPet/speciesSelector.dart';
import 'package:lapka/providers/adoptPetProvider.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/settings/colors.dart';
import 'package:provider/provider.dart';

class AdoptPetListPage extends StatefulWidget {
  const AdoptPetListPage({Key? key}) : super(key: key);

  @override
  _AdoptPetListPageState createState() => _AdoptPetListPageState();
}

class _AdoptPetListPageState extends State<AdoptPetListPage> {
  TextEditingController _filterController = TextEditingController();
  @override
  void initState() {
    context.read<AdoptPetProvider>().getAllPets();
    _filterController.addListener(() {
      context.read<AdoptPetProvider>().getFilteredPets(_filterController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingBarScaffold(
        appbar: CustomAppBar(
          fade: true,
          localization: context.watch<LocationProvider>().city ?? 'Nieznana',
          showLocalization: true,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 33,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32, left: 20, right: 20),
                      child: InputFliter(controller: _filterController),
                    ),
                    SpeciesSelector(
                      selected: context.watch<AdoptPetProvider>().speciesFilter,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: _body(context, context.watch<AdoptPetProvider>().status));
  }

  Widget _body(BuildContext context, AdoptPetStatus status) {
    switch (status) {
      case AdoptPetStatus.Done:
        if(context.read<AdoptPetProvider>().pets.length == 0)
        return Center(child: BasicText.body14('Brak wyników...'),);
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: context.watch<AdoptPetProvider>().pets.length,
            itemBuilder: (context, i) {
              print('1');
              return Padding(
                padding: i == 0
                    ? const EdgeInsets.only(bottom: 16, top: 20)
                    : const EdgeInsets.only(bottom: 16),
                child: PetCard(
                  pet: context.read<AdoptPetProvider>().pets[i],
                ),
              );
            },
          ),
        );
      case AdoptPetStatus.Loading:
        return LoadingIndicator();
      case AdoptPetStatus.Error:
        return Center(child: BasicText.body14('Wystąpił błąd...'),);
      case AdoptPetStatus.New:
        return LoadingIndicator();
    }
  }
}
