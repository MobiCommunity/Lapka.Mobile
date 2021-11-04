import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/species.dart';
import 'package:provider/provider.dart';

class SpeciesSelector extends StatelessWidget {
  final Species selected;
  const SpeciesSelector({Key? key, required this.selected}) : super(key: key);

  _onTap(BuildContext context, Species species) {
    //context.read<AdoptPetProvider>().speciesFilter = species;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: BasicText.body14Bold('Gatunek zwierzaka'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              SpeciesButton(
                  title: 'Wszystkie',
                  asset: 'lib/assets/paw-icon.svg',
                  selected: selected == Species.All,
                  onTapCallback: () {
                    _onTap(context, Species.All);
                  }),
              SizedBox(
                width: 24,
              ),
              SpeciesButton(
                  title: 'Psy',
                  asset: 'lib/assets/dog-icon.svg',
                  selected: selected == Species.Dogs,
                  onTapCallback: () {
                    _onTap(context, Species.Dogs);
                  }),
              SizedBox(
                width: 24,
              ),
              SpeciesButton(
                  title: 'Koty',
                  asset: 'lib/assets/cat-icon.svg',
                  selected: selected == Species.Cats,
                  onTapCallback: () {
                    _onTap(context, Species.Cats);
                  }),
              SizedBox(
                width: 24,
              ),
              SpeciesButton(
                  title: 'Papugi',
                  asset: 'lib/assets/parrot-icon.svg',
                  selected: selected == Species.Parrots,
                  onTapCallback: () {
                    _onTap(context, Species.Parrots);
                  }),
              SizedBox(
                width: 24,
              ),
              SpeciesButton(
                  title: 'Króliki',
                  asset: 'lib/assets/rabbit-icon.svg',
                  selected: selected == Species.Rabbits,
                  onTapCallback: () {
                    _onTap(context, Species.Rabbits);
                  }),
              SizedBox(
                width: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpeciesButton extends StatelessWidget {
  final bool selected;
  final String asset;
  final Function() onTapCallback;
  final double iconSize;
  final String title;
  const SpeciesButton({
    Key? key,
    required this.asset,
    required this.selected,
    required this.onTapCallback,
    this.iconSize = 42,
    this.title = 'Name',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCallback,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: BasicColors.shadow,
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: Offset(2, 3),
                  )
                ],
                color: selected ? BasicColors.lightGreen : BasicColors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  asset,
                  color: selected
                      ? BasicColors.white
                      : BasicColors.darkGrey.withOpacity(0.3),
                  height: iconSize,
                  width: iconSize,
                )),
          ),
          SizedBox(
            height: 8,
          ),
          BasicText.body14Light(title)
        ],
      ),
    );
  }
}
