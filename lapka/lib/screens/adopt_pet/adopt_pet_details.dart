import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';

import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/image_button.dart';
import 'package:lapka/components/screens/adopt_pet/basic_pet_info_row.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/components/basic/rounded_image.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/basic/image_carusel.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/adopt_pet/bloc/adopt_pet_details_bloc.dart';
import 'package:lapka/components/dialogs/login_dialog.dart';
import 'package:lapka/repository/adopt_pet_repository.dart';
import 'package:lapka/screens/login/login_page.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:lapka/settings/request_settings.dart';

class AdoptPetDetails extends StatelessWidget {
  String id;
  AdoptPetDetails({Key? key, required this.id}) : super(key: key);

  _share() {
    throw UnimplementedError();
  }

  _like(BuildContext context) {}

  _adopt(context) {
    BasicDialog.showDialogCustom(
        context,
        LoginDialog(onExit: () {
          Navigator.pop(context);
        }, onLogin: () {
          NavigatorHelper.push(context, LoginPage());
        }));
  }

  Widget _initial(BuildContext context) {
    final bloc = BlocProvider.of<AdoptPetDetailsBloc>(context);
    bloc.add(AdoptPetDetailsEvent.getDetails(id));
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

  Widget _buildDetails(BuildContext context, Pet pet) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      child: ImageCarusel(images: [
                        ImageFromUrl(
                          imageUrl:
                              imagesUrl + 'api/files/${pet.mainPhotoPath}',
                          height: 300,
                          rounded: false,
                        ),
                        Container(
                          color: Colors.grey.withOpacity(0.8),
                        ),
                        Container(
                          color: Colors.grey,
                        ),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 197, right: 20),
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: new BoxDecoration(
                          color: BasicColors.darkGrey.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.photo_camera,
                          color: BasicColors.white,
                          size: 24,
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 255, left: 20, right: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: BasicColors.shadow,
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BasicText.heading1Bold(pet.name ?? 'Nieznane'),
                          BasicText.subtitleLight(pet.race ?? 'Nieznana')
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 18),
                      child: pet.sex == false
                          ? SvgPicture.asset(
                              'lib/assets/male-symbol.svg',
                              color: BasicColors.lightGreen,
                              width: 55,
                              height: 55,
                            )
                          : SvgPicture.asset(
                              'lib/assets/famale-symbol.svg',
                              color: BasicColors.lightGreen,
                              width: 55,
                              height: 55,
                            ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 1, height: 36),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: BasicColors.darkGrey, shape: BoxShape.circle),
                  width: 40,
                  height: 43,
                ),
                SizedBox(
                  height: 1,
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BasicText.body14Light(pet.shelterAddress!.name!),
                    // BasicText.body14Bold(
                    //   '${pet.shelterAddress!.city} ' +
                    //       'ul.${pet.shelterAddress!.street} (' +
                    //      LocationHelper.getDistance(context.read<LocationProvider>().position,
                    //         pet.shelterAddress!.geoLocation!).toStringAsFixed(1)+
                    //       ' km)',
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 24,
              width: 1,
            ),
            BasicPetInfoRow(
                age: pet.birthDay!,
                petColor: pet.color!,
                weight: pet.weight!,
                sterile: pet.sterilization!),
            SizedBox(
              height: 23,
              width: 1,
            ),
            BasicText.subtitleBigBold('Podstawowe informacje'),
            SizedBox(
              height: 8,
              width: 1,
            ),
            BasicText.body14Light(pet.description!),
            SizedBox(
              height: 14,
              width: 1,
            ),
            Row(
              children: [
                ImageButton(
                  onPressed: () {
                    _like(context);
                  },
                  trailling: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset('lib/assets/heart-icon.svg',
                          color: BasicColors.white)),
                ),
                SizedBox(
                  width: 20,
                  height: 1,
                ),
                Expanded(
                  child: ImageButton(
                      color: BasicColors.lightGreen,
                      onPressed: () {
                        _adopt(context);
                      },
                      trailling: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: SvgPicture.asset('lib/assets/paw-symbol.svg',
                              color: BasicColors.white)),
                      text: 'ADOPTUJ'),
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdoptPetDetailsBloc(AdoptPetRepositoryApi()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: '',
          showBack: true,
          customTrailling: true,
          trailling: InkWell(
              onTap: _share,
              child: SvgPicture.asset('lib/assets/download-sign.svg')),
        ),
        body: BlocBuilder<AdoptPetDetailsBloc, AdoptPetDetailsState>(
            builder: (context, state) {
          return state.when(
              initial: () => _initial(context),
              loading: _loading,
              loaded: (pet) => _buildDetails(context, pet),
              error: (message) => _error(message));
        }),
      ),
    );
  }
}
