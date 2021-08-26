import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/components/screens/adopt_pet/shelter_comp.dart';
import 'package:lapka/components/screens/volunteer/suport_shelter_card.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/providers/shelter/bloc/shelter_details_bloc.dart';
import 'package:lapka/repository/shelter_repository.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/location_helper.dart';
import 'package:provider/provider.dart';

class VolunteerDetailsPage extends StatelessWidget {
  final String id;
  const VolunteerDetailsPage({Key? key, required this.id}) : super(key: key);

  Widget _smallLineSpacer() {
    return Container(
      height: 1,
      color: BasicColors.grey,
    );
  }

  Widget _initial(BuildContext context) {
    final bloc = BlocProvider.of<ShelterDetailsBloc>(context);
    bloc.add(ShelterDetailsEvent.getDetails(id));
    return Container();
  }

  Widget _loading() {
    return LoadingIndicator();
  }

  Widget _error(String msg) {
    return Center(
      child: BasicText.body14(msg),
    );
  }

  Widget _buildBody(BuildContext context, Shelter shelter){
    return SingleChildScrollView(
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
                      color: BasicColors.lightGrey),
                ),
                Container(
                  color: BasicColors.lightGrey,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      ShelterComp(
                          shelterName: shelter.name!,
                          logoWidget: Container(
                              width: 60,
                              height: 65,
                              decoration: BoxDecoration(
                                color: BasicColors.grey,
                              )),
                          upperText: '(' +
                              // LocationHelper.getDistance(
                              //         context.read<LocationProvider>().position,
                              //         shelter.address!.geoLocation!)
                              //     .toStringAsFixed(1) +
                              ' km) ${shelter.address!.city}',
                          lowerText: 'ul. ${shelter.address!.street}'),
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
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShelterDetailsBloc(ShelterRepositoryApi()),
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            title: 'Wolontariat',
            fade: true,
            showBack: true,
          ),
          body: BlocBuilder<ShelterDetailsBloc, ShelterDetailsState>(
            builder: (context, state){
              return state.when(
                initial: ()=> _initial(context),
                loading: _loading,
                loaded: (shelter) => _buildBody(context ,shelter),
                error: (message)=> _error(message)
                );
            },)
          ),
    );
  }
}
