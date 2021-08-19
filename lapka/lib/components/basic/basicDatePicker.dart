import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/validators.dart';

class BasicDatePicker extends StatefulWidget {
  final Function() onChangeCallback;
  final String placeholder;
  final Function validator;
  final DateTime lastDate, firsDate, initialDate;
  BasicDatePicker({
    required this.onChangeCallback,
    this.placeholder = '',
    this.validator = Validators.defaultValidator,
    required this.firsDate,
    required this.lastDate,
    required this.initialDate,
    Key? key }): super(key: key);

  @override
  _BasicDatePickerState createState() => _BasicDatePickerState();
}

class _BasicDatePickerState extends State<BasicDatePicker> {
  TextEditingController controller = TextEditingController();

Future _selectDate() async {
   DateTime? picked = await showDatePicker(
       context: context,
       initialDate: controller.text == ''? widget.initialDate: Jiffy(controller.text, 'dd/MM/yyyy').local(),
       firstDate: widget.firsDate,
       lastDate: widget.lastDate,
       builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: BasicColors.DarkGreenPallete,
            primaryColorDark: BasicColors.DarkGreenPallete,
            accentColor: BasicColors.DarkGreenPallete,
            
          ),
        dialogBackgroundColor:Colors.white,
      ),
      child: child!,
   );}
       );
       
   if (picked != null){
     Jiffy jiffy = Jiffy(picked);
      controller.text = jiffy.format('dd/MM/yyyy');
      widget.onChangeCallback();
   }
     
 }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectDate,
      child: BasicFormField(
        controller: controller,
        validator: widget.validator,
        enabled: false,
        placeholder: widget.placeholder,
        trailling: Icon(Icons.calendar_today_outlined ,
        color: BasicColors.darkGrey.withOpacity(0.3),size: 30,),),
    );
  }
}