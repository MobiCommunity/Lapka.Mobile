import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/image_carusel.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/components/basic/rounded_image.dart';
import 'package:lapka/components/basic/textButton.dart';
import 'package:lapka/components/screens/adopt_pet/basic_pet_info_row.dart';
import 'package:lapka/models/my_pet_event.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/my_pets/bloc/details_my_pets_bloc.dart';
import 'package:lapka/providers/my_pets/bloc/edit_my_pets_bloc.dart';
import 'package:lapka/repository/my_pets_repository.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/request_settings.dart';
import 'package:lapka/settings/text_styles.dart';
import 'package:lapka/utils/date_helper.dart';

class DetailsMyPets extends StatelessWidget {
  final Pet pet;
  const DetailsMyPets({Key? key, required this.pet}) : super(key: key);

  Widget _initial(BuildContext context) {
    final bloc = BlocProvider.of<DetailsMyPetsBloc>(context);
    bloc.add(DetailsMyPetsEvent.getDetails(pet.id!));
    return Container();
  }

  Widget _loading() {
    return LoadingIndicator();
  }

  Widget _error(/* String msg */) {
    return Center(
      child: BasicText.body14('Error'),
    );
  }

  Column _buildDetails(BuildContext context, Pet pet) {
    return Column(
      children: [
        Stack(children: [
          _photoStack(pet),
          _nameCardBuilder(pet),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              BasicPetInfoRow(
                  age: pet.birthDay!,
                  petColor: pet.color ?? "Nieznany",
                  weight: pet.weight ?? 0,
                  sterile: pet.sterilization ?? false),
              SizedBox(
                height: 20,
              ),
              BasicText.subtitleBigBold('Przyszłe wydarzenia'),
              const SizedBox(
                height: 6,
              ),
              BasicTextButton(
                  onPressed: () {},
                  text: '+ Dodaj wizytę u weterynarza',
                  underline: true),
              const SizedBox(
                height: 20,
              ),
              IncomingEventsList(),
              const SizedBox(
                height: 12,
              ),
              const BasicText.subtitleBigBold('Ostatnie wizyty'),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }

  Padding _nameCardBuilder(Pet pet) {
    return Padding(
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
    );
  }

  Stack _photoStack(Pet pet) {
    return Stack(
      children: [
        Container(
          height: 300,
          child: ImageCarusel(images: [
            ImageFromUrl(
              imageUrl: imagesUrl + 'api/files/${pet.mainPhotoPath}',
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
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsMyPetsBloc(MyPetsRepositoryFake()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: '',
          showBack: true,
        ),
        body: BlocBuilder<DetailsMyPetsBloc, DetailsMyPetsState>(
            builder: (context, state) {
          return state.when(
              initial: () => _initial(context),
              loading: _loading,
              loaded: (pet) => _buildDetails(context, pet),
              error: _error);
        }),
      ),
    );
  }
}

class IncomingEventsList extends StatelessWidget {
  final List<MyPetEvent> list = [
    MyPetEvent(
        date: DateTime(2021, 9, 14),
        description:
            'Hej! Zbliżają się urodziny Twojego pupila! Zapewnij mu tego dnia prawdziwą ucztę. :)'),
    MyPetEvent(
        date: DateTime(2021, 9, 12),
        description:
            'Hej! Zbliżają się urodziny Twojego pupila! Zapewnij mu tego dnia prawdziwą ucztę. :)'),
    MyPetEvent(
        date: DateTime(2021, 9, 10),
        description:
            'Hej! Zbliżają się urodziny Twojego pupila! Zapewnij mu tego dnia prawdziwą ucztę. :)'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (var i = 0; i < list.length; i++)
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: BasicText.body14(
                        DateTimeHelper.getDateString(list[i].date))),
                Expanded(
                  flex: 3,
                  child: BasicText.body14Light(list[i].description),
                ),
              ],
            ),
            i == list.length - 1 ? Container() : SizedBox(height: 16)
          ],
        )
    ]);
  }
}
