import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/settings/colors.dart';

class BasicDatePicker extends StatefulWidget {
  final Function() onChangeCallback;
  final String placeholder;
  const BasicDatePicker({
    required this.onChangeCallback,
    this.placeholder = '',
    Key? key }) : super(key: key);

  @override
  _BasicDatePickerState createState() => _BasicDatePickerState();
}

class _BasicDatePickerState extends State<BasicDatePicker> {
  TextEditingController controller = TextEditingController();

Future _selectDate() async {
  DateTime now = DateTime.now();
  
   DateTime? picked = await showDatePicker(
       context: context,
       initialDate: now,
       firstDate: DateTime.now().subtract(Duration(days: 30)),
       lastDate: now);
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
        enabled: false,
        placeholder: 'Data zaginięcia',
        trailling: Icon(Icons.calendar_today_outlined ,
        color: BasicColors.darkGrey.withOpacity(0.3),size: 30,),),
    );
  }
}