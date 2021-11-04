import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_date_picker.dart';
import 'package:lapka/components/basic/basic_form_field.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/cancel_button.dart';
import 'package:lapka/components/basic/custom_checkbox.dart';
import 'package:lapka/components/basic/treatment_selector.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/validators.dart';

class VisitDialog extends StatefulWidget {
  final Function() onAddCallback;

  const VisitDialog(this.onAddCallback);

  @override
  _VisitDialogState createState() => _VisitDialogState();
}

class _VisitDialogState extends State<VisitDialog> {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController weighController = TextEditingController();
  bool status = true;
  DateTime? birthDate;
  List<String> treatments = [];

  _spacer() {
    return SizedBox(
      height: 16,
    );
  }

  _changeStatus(bool val) {
    setState(() {
      status = val;
    });
  }

  _add() {
    widget.onAddCallback();
  }

  _onChangeTreatments(List<String> list) {
    treatments = list;
  }

  _onBirthDateChangeCallback(DateTime date) {
    birthDate = date;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 11),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: BasicColors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 26, bottom: 32),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BasicText.body14Light(
                          'Dodaj nową wizytę',
                          color: BasicColors.darkGrey.withOpacity(0.6),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        BasicText.subtitleBigBold('Czy ta wizyta odbyła się?'),
                        _spacer(),
                        _buildStatus(),
                        _spacer(),
                        _buildBirthDate(),
                        _spacer(),
                        _buildDescription(),
                        _spacer(),
                        _buildWeight(),
                        _spacer(),
                        TratmentSelector(
                          onChangeCallback: _onChangeTreatments,
                        ),
                        _spacer(),
                        BasicButton(
                          onPressed: _add,
                          text: "DODAJ NOWĄ WIZYTĘ",
                        )
                      ],
                    ),
                  )),
            ),
          ),
          Container(
            height: 44,
            alignment: Alignment.topRight,
            child: CancelButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: false).pop();
              },
            ),
          )
        ],
      ),
    );
  }

  Row _buildStatus() {
    return Row(
      children: [
        CustomCheckbox(
            text: 'Tak',
            isChecked: status,
            onPressCallback: () {
              _changeStatus(true);
            }),
        SizedBox(
          width: 100,
        ),
        CustomCheckbox(
            text: 'Nie',
            isChecked: !(status),
            onPressCallback: () {
              _changeStatus(false);
            }),
      ],
    );
  }

  BasicDatePicker _buildBirthDate() {
    return BasicDatePicker(
      initialDate: DateTime.now(), //widget.birthDate ?? DateTime.now(),
      firsDate: DateTime.now().subtract(Duration(days: 30)),
      lastDate: DateTime.now(),
      placeholder: 'Data wydarzenia',
      validator: (text) => Validators.multiValidator([
        VaidatorModel(Validators.notEmpty, 'Musisz podać datę'),
      ], text),
      onChangeCallback: _onBirthDateChangeCallback,
    );
  }

  BasicFormField _buildWeight() {
    return BasicFormField(
      controller: weighController,
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

  BasicFormField _buildDescription() {
    return BasicFormField(
      controller: descriptionController,
      placeholder: 'Opis wydarzenia',
      maxLines: 5,
    );
  }
}
