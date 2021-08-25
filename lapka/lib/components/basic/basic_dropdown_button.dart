import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';

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
