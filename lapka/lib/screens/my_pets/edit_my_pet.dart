import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_date_picker.dart';
import 'package:lapka/components/basic/basic_dropdown_button.dart';
import 'package:lapka/components/basic/basic_form_field.dart';
import 'package:lapka/components/basic/basic_image_picker.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/custom_checkbox.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/my_pets/bloc/edit_my_pets_bloc.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:lapka/utils/species.dart';
import 'package:lapka/utils/validators.dart';

class EditMyPetPage extends StatefulWidget {
  Pet? pet;
  final bool creation;
  bool? sex;
  bool? sterilizated;
  String? species;
  DateTime? birthDate;

  final TextEditingController petNameController = TextEditingController();
  final TextEditingController raceController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  EditMyPetPage({Key? key, this.pet, this.creation = false}) {
    print(pet.toString());
    if (!creation) {
      if (this.pet != null) {
        this.pet!.species != null?  species = getStringFromSpecies(Species.values[this.pet!.species!]): null;
        petNameController.text = this.pet!.name!;
        raceController.text = this.pet!.race!;
        pet!.color != null ? colorController.text = pet!.color! : null;
        pet!.weight != null
            ? weightController.text = pet!.weight.toString()
            : null;
        birthDate = pet!.birthDay;
        sex = pet!.sex;
        sterilizated = pet!.sterilization;
        
      } else {
        this.pet = Pet();
      }
    } else {
      this.pet = Pet();
    }
  }

  @override
  _EditMyPetPageState createState() => _EditMyPetPageState();
}

class _EditMyPetPageState extends State<EditMyPetPage> {
  final formKey = GlobalKey<FormState>();

  List<String> _species = getSpeciesList();

  _addPet(BuildContext context) {
    BlocProvider.of<EditMyPetsBloc>(context)
        .add(EditMyPetsEvent.create(widget.pet!));
  }

  _edit(BuildContext context) {
    BlocProvider.of<EditMyPetsBloc>(context)
        .add(EditMyPetsEvent.update(widget.pet!));
  }

  _delete(BuildContext context) {
    BlocProvider.of<EditMyPetsBloc>(context)
        .add(EditMyPetsEvent.delete(widget.pet!.id!));
  }

  void _changeSex(bool val) {
    widget.sex = val;
    setState(() {});
  }

  void _changeSterilizated(bool val) {
    widget.sterilizated = val;
    setState(() {});
  }

  _listCallback(List<String> list) {}

  void _changeSpecies(String val){
    widget.species = val;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: 'Moje zwierzaki',
        showBack: true,
        fade: true,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 133),
            color: BasicColors.lightGrey,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 33,
                  decoration: BoxDecoration(
                      color: BasicColors.lightGrey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33))),
                ),
                Form(
                  key: formKey,
                  child: Container(
                    color: BasicColors.lightGrey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _speciesBuilder(),
                          _spacer(),
                          _raceBuilder(),
                          _spacer(),
                          _petNameBuilder(),
                          _spacer(),
                          BasicText.body14(
                            'Płeć',
                            color: BasicColors.darkGrey,
                          ),
                          _smallSpacer(),
                          _sexBuilder(),
                          _spacer(),
                          BasicImagePicker(onListChange: _listCallback),
                          _spacer(),
                          BasicText.body14(
                            'Podstawowe informacje',
                            color: BasicColors.darkGrey,
                          ),
                          _spacer(),
                          _birthDate(),
                          _spacer(),
                          _colorBuilder(),
                          _spacer(),
                          _weightBuilder(),
                          _spacer(),
                          BasicText.body14(
                            'Czy pies jest wysterlizowany?',
                            color: BasicColors.darkGrey,
                          ),
                          _smallSpacer(),
                          _sterilizationBuilder(),
                          _spacer(),
                          widget.creation
                              ? _addButtonBlocBuilder()
                              : _editButtonBlocBuilder(),
                          _spacer()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  BlocBuilder<EditMyPetsBloc, EditMyPetsState> _addButtonBlocBuilder() {
    return BlocBuilder<EditMyPetsBloc, EditMyPetsState>(
      builder: (context, state) {
        return state.when(
            initial: () => _addButtonBuilder(context),
            loading: () => Center(child: LoadingIndicator()),
            edited: () {
              NavigatorHelper.pop(context);
              context.read<EditMyPetsBloc>().add(EditMyPetsEvent.reset());
              return _addButtonBuilder(context);
            },
            error: (val) => _addButtonBuilder(context),
            loaded: (Pet pet) => _addButtonBuilder(context));
      },
    );
  }

  BlocBuilder<EditMyPetsBloc, EditMyPetsState> _editButtonBlocBuilder() {
    return BlocBuilder<EditMyPetsBloc, EditMyPetsState>(
      builder: (context, state) {
        return state.when(
            initial: () {
              return _editRowBuilder(context);
            },
            loading: () => Center(child: LoadingIndicator()),
            edited: () {
              NavigatorHelper.pop(context);
              context.read<EditMyPetsBloc>().add(EditMyPetsEvent.reset());
              return _editRowBuilder(context);
            },
            error: (val) => _editRowBuilder(context),
            loaded: (Pet pet) => _editRowBuilder(context));
      },
    );
  }

  Widget _editRowBuilder(BuildContext context) {
    return Row(
      children: [
        Flexible(child: _deleteButtonBuilder(context)),
        Flexible(child: _editButtonBuilder(context)),
      ],
    );
  }

  BasicButton _addButtonBuilder(BuildContext context) {
    return BasicButton(
      onPressed: () => _addPet(context),
      text: 'DODAJ ZWIERZAKA',
    );
  }

  BasicButton _editButtonBuilder(BuildContext context) {
    return BasicButton(
      onPressed: () => _edit(context),
      text: 'ZAPISZ',
    );
  }

  BasicButton _deleteButtonBuilder(BuildContext context) {
    return BasicButton(
      color: Colors.transparent,
      textColor: BasicColors.darkGreen,
      onPressed: () => _delete(context),
      text: 'USUŃ',
    );
  }

  Row _sterilizationBuilder() {
    return Row(
      children: [
        CustomCheckbox(
            text: 'Nie',
            isChecked: !(widget.sterilizated ?? true),
            onPressCallback: () {
              _changeSterilizated(false);
            }),
        SizedBox(
          width: 100,
        ),
        CustomCheckbox(
            text: 'Tak',
            isChecked: widget.sterilizated ?? false,
            onPressCallback: () {
              _changeSterilizated(true);
            }),
      ],
    );
  }

  BasicFormField _weightBuilder() {
    return BasicFormField(
      controller: widget.weightController,
      textInputType: TextInputType.number,
      placeholder: 'Waga (w kg)',
      trailling: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
              width: 1,
              height: 30,
              color: BasicColors.greyOutlineBorder,
            ),
          ),
          BasicText.body14Light('kg')
        ],
      ),
    );
  }

  BasicFormField _colorBuilder() {
    return BasicFormField(
        controller: widget.colorController, placeholder: 'Wpisz umaszczenie');
  }

  BasicDatePicker _birthDate() {
    return BasicDatePicker(
      initialDate: widget.birthDate ?? DateTime.now(),
      firsDate: DateTime.now().subtract(Duration(days: 30)),
      lastDate: DateTime.now(),
      placeholder: 'Data urodzenia',
      validator: (text) => Validators.multiValidator([
        VaidatorModel(Validators.notEmpty, 'Musisz podać datę'),
      ], text),
      onChangeCallback: () {},
    );
  }

  Row _sexBuilder() {
    return Row(
      children: [
        CustomCheckbox(
            text: 'Męska',
            isChecked: !(widget.sex ?? true),
            onPressCallback: () {
              _changeSex(false);
            }),
        SizedBox(
          width: 100,
        ),
        CustomCheckbox(
            text: 'Żeńska',
            isChecked: widget.sex ?? false,
            onPressCallback: () {
              _changeSex(true);
            }),
      ],
    );
  }

  SizedBox _smallSpacer() {
    return SizedBox(
      height: 14,
    );
  }

  BasicFormField _petNameBuilder() {
    return BasicFormField(
      controller: widget.petNameController,
      placeholder: 'Wpisz imię zwierzaka',
    );
  }

  BasicFormField _raceBuilder() {
    return BasicFormField(
      controller: widget.raceController,
      placeholder: 'Wpisz rase',
    );
  }

  SizedBox _spacer() {
    return SizedBox(
      height: 16,
    );
  }

  BasicDropdownButton _speciesBuilder() {
    return BasicDropdownButton(
      onChangeCallback: () {

      },
      placeholder: 'Wybierz gatunek',
      items: _species,
      initialVal: widget.species,
    );
  }
}
