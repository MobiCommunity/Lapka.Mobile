import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/components/screens/adopt_pet/shelter_comp.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/providers/shelter/bloc/shelter_list_bloc.dart';
import 'package:lapka/screens/volunteer/volunteer_details_page.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/location_helper.dart';
import 'package:provider/provider.dart';

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
                BlocBuilder<ShelterListBloc, ShelterListState>(
                  builder: (context, state){ 
                    return state.when(
                      initial: () => _initial(context),
                      loading: _loading,
                      loaded: (shelters) => _body(shelters),
                      error: (message) => _error(message));
                  },
                )
              ],
            ),
          ],
        ));
  }

  Widget _body(List<Shelter> shelters) {
    return SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: BasicColors.lightGrey,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VolunteerDetailsPage(id: shelters[index].id!,)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: BasicColors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShelterComp(
                          shelterName: shelters[index].name!,
                          logoWidget: Container(
                              width: 60,
                              height: 65,
                              decoration: BoxDecoration(
                                color: BasicColors.grey,
                              )),
                          upperText: '(' +
                              // LocationHelper.getDistance(
                              //         context.read<LocationProvider>().position,
                              //         shelters[index].address!.geoLocation!)
                              //     .toStringAsFixed(1) +
                              'km) ${shelters[index].address!.city}',
                          lowerText: 'ul. ' + shelters[index].address!.street!),
                    ),
                  ),
                ),
              ),
            );
          }, childCount: shelters.length),
        );
  }

  Widget _initial(BuildContext context){
    final bloc= BlocProvider.of<ShelterListBloc>(context);
    bloc.add(ShelterListEvent.getShelters());
    return SliverToBoxAdapter(child: Container());
  }

  Widget _loading(){
    return SliverToBoxAdapter(child: LoadingIndicator());
  }

  Widget _error(String msg){
    return SliverToBoxAdapter(child: Center(child: BasicText.body14(msg),));
  }
}
