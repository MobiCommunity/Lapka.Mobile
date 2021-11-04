import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_date_picker.dart';
import 'package:lapka/components/basic/basic_dropdown_button.dart';
import 'package:lapka/components/basic/basic_form_field.dart';
import 'package:lapka/components/basic/basic_image_picker.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/custom_checkbox.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';
import 'package:lapka/utils/validators.dart';

class MissingReportPage extends StatefulWidget {
  const MissingReportPage({Key? key}) : super(key: key);

  @override
  _MissingReportPageState createState() => _MissingReportPageState();
}

class _MissingReportPageState extends State<MissingReportPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController localizationController = TextEditingController();
  final TextEditingController petNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController infoController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool? sex;

  _listCallback(List<String> photos) {
    print('callback : ${photos.length}');
  }

  _changeSex(bool state) {
    sex = state;
    setState(() {});
  }

  _validate() {
    formKey.currentState!.validate();
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
                          BasicDatePicker(
                            initialDate: DateTime.now(),
                            firsDate:
                                DateTime.now().subtract(Duration(days: 30)),
                            lastDate: DateTime.now(),
                            placeholder: 'Data zaginięcia',
                            validator: (text) => Validators.multiValidator([
                              VaidatorModel(
                                  Validators.notEmpty, 'Musisz podać datę'),
                            ], text),
                            onChangeCallback: (DateTime date) {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          BasicFormField(
                            controller: localizationController,
                            placeholder:
                                'Podaj potencjalną lokalizację zwierząt',
                            trailling: Icon(
                              Icons.near_me,
                              color: BasicColors.darkGreen.withOpacity(0.5),
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
                            onChangeCallback: () {},
                            placeholder: 'Wybierz kategorie',
                            items: [
                              'Kategoria 1',
                              'Kategoria 2',
                              'Kategoria 3'
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          BasicDropdownButton(
                            onChangeCallback: () {},
                            placeholder: 'Wybierz rasę',
                            items: [
                              'Kategoria 1',
                              'Kategoria 2',
                              'Kategoria 3'
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          BasicText.body14(
                            'Płeć',
                            color: BasicColors.darkGrey,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              CustomCheckbox(
                                  text: 'Pies',
                                  isChecked: !(sex ?? true),
                                  onPressCallback: () {
                                    _changeSex(false);
                                  }),
                              SizedBox(
                                width: 100,
                              ),
                              CustomCheckbox(
                                  text: 'Suczka',
                                  isChecked: sex ?? false,
                                  onPressCallback: () {
                                    _changeSex(true);
                                  }),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          BasicFormField(
                              textInputType: TextInputType.number,
                              controller: ageController,
                              placeholder: 'Wiek'),
                          SizedBox(
                            height: 16,
                          ),
                          BasicDropdownButton(
                            onChangeCallback: () {},
                            placeholder: 'Wybierz kolor',
                            items: [
                              'Kategoria 1',
                              'Kategoria 2',
                              'Kategoria 3'
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          BasicFormField(
                            controller: weightController,
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
                            placeholder:
                                'Inne informacje o zaginionym zwierzaku ',
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
                              validator: (text) => Validators.multiValidator([
                                    VaidatorModel(Validators.notEmpty,
                                        'Musisz podać imię'),
                                  ], text),
                              controller: nameController,
                              placeholder: 'Imię'),
                          SizedBox(
                            height: 16,
                          ),
                          BasicFormField(
                              textInputType: TextInputType.phone,
                              validator: (text) => Validators.multiValidator([
                                    VaidatorModel(Validators.notEmpty,
                                        'Musisz podać numer'),
                                    VaidatorModel(Validators.phone,
                                        'Nieprawidłowy numer'),
                                  ], text),
                              controller: phoneController,
                              placeholder: 'Wpisz numer telefonu'),
                          SizedBox(
                            height: 16,
                          ),
                          BasicButton(
                            onPressed: _validate,
                            text: "DODAJ ZGŁOSZENIE",
                            color: BasicColors.lightGreen,
                          ),
                          SizedBox(
                            height: 16,
                          )
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
}
