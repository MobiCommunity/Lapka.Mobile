import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicDatePicker.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/components/basic/basicImagePicker.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/customCheckbox.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/textStyles.dart';

class MissingReportPage extends StatefulWidget {
  const MissingReportPage({Key? key}) : super(key: key);

  @override
  _MissingReportPageState createState() => _MissingReportPageState();
}

class _MissingReportPageState extends State<MissingReportPage> {
  final TextEditingController localizationController = TextEditingController();
  final TextEditingController petNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController infoController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool? sex = null;

  _listCallback(List<String> photos) {
    print('callback : ${photos.length}');
  }

  _changeSex(bool state){
    sex = state;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        fade: true,
        title: "Zgłoszenia",
        showBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 33,
              decoration: BoxDecoration(
                  color: BasicColors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33))),
            ),
            Container(
              color: BasicColors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BasicDatePicker(
                      onChangeCallback: () {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                      controller: localizationController,
                      placeholder: 'Podaj potencjalną lokalizację zwierząt',
                      trailling: Icon(
                        Icons.near_me,
                        color: BasicColors.lightGreen.withOpacity(0.5),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    BasicText.body14(
                      'Podstawowe informacje o zwierzaku',
                      color: BasicColors.darkGrey,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                        controller: petNameController,
                        placeholder: 'Wpisz imię zwierzaka'),
                    SizedBox(
                      height: 16,
                    ),
                    BasicDropdownButton(
                      onChangeCallback: (){},
                      placeholder: 'Wybierz kategorie',
                      items: ['Kategoria 1', 'Kategoria 2','Kategoria 3'],),
                    SizedBox(
                      height: 16,
                    ),
                    BasicDropdownButton(
                      onChangeCallback: (){},
                      placeholder: 'Wybierz rasę',
                      items: ['Kategoria 1', 'Kategoria 2','Kategoria 3'],),
                    
                    SizedBox(
                      height: 16,
                    ),
                    BasicText.body14(
                      'Płeć',
                      color: BasicColors.darkGrey,
                    ),
                    SizedBox(height: 14,),
                    Row(
                      children: [
                        CustomCheckbox(text: 'Pies', isChecked: !(sex??true), onPressCallback: (){_changeSex(false);}),
                        SizedBox(width: 100,),
                        CustomCheckbox(text: 'Suczka', isChecked: sex??false,onPressCallback: (){_changeSex(true);}),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                        controller: ageController, placeholder: 'Wiek'),
                    SizedBox(
                      height: 16,
                    ),
                    BasicDropdownButton(
                      onChangeCallback: (){},
                      placeholder: 'Wybierz kolor',
                      items: ['Kategoria 1', 'Kategoria 2','Kategoria 3'],),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                      controller: weightController,
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
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BasicImagePicker(onListChange: _listCallback),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                      controller: infoController,
                      placeholder: 'Inne informacje o zaginionym zwierzaku ',
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    BasicText.body14(
                      'Mój kontakt',
                      color: BasicColors.darkGrey,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                        controller: nameController, placeholder: 'Imię'),
                    SizedBox(
                      height: 16,
                    ),
                    BasicFormField(
                        controller: phoneController,
                        placeholder: 'Wpisz numer telefonu'),
                    SizedBox(
                      height: 16,
                    ),
                    BasicButton(
                      onPressed: () {},
                      text: "DODAJ ZGŁOSZENIE",
                      color: BasicColors.darkGreen,
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BasicDropdownButton extends StatefulWidget {
  final String placeholder;
  final List<String> items;
  final Function() onChangeCallback;
  const BasicDropdownButton(
      {required this.items, this.placeholder = '',required this.onChangeCallback, Key? key})
      : super(key: key);

  @override
  _BasicDropdownButtonState createState() => _BasicDropdownButtonState();
}

class _BasicDropdownButtonState extends State<BasicDropdownButton> {
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectedValue,
      icon:
          Icon(Icons.expand_more, color: BasicColors.darkGrey.withOpacity(0.3)),
      decoration: InputDecoration(
        hintText: widget.placeholder,
        hintStyle:
            body14Light.copyWith(color: BasicColors.darkGrey.withOpacity(0.3)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        filled: true,
        fillColor: Colors.white,
        border: circularBorder.copyWith(
          borderSide: BorderSide(color: BasicColors.greyOutlineBorder),
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: BasicColors.greyOutlineBorder),
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: BasicColors.greyOutlineBorder),
        ),
      ),
      items: widget.items.map((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: BasicText.body14Light(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}
