import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';

class InputFliter extends StatelessWidget {
  final TextEditingController controller;
  const InputFliter(
      {Key? key, required this.controller})
      : super(key: key);

      final border = const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: Colors.transparent,
            )
            );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: body14Light.copyWith(color: BasicColors.darkGrey),
      cursorColor: BasicColors.grey,
      decoration: InputDecoration(
        hintStyle: body14Light.copyWith(color: BasicColors.grey),
        hintText: 'Szukaj...',
        contentPadding:
        const EdgeInsets.all(16),
        filled: true,
        fillColor: BasicColors.white,
        prefixIcon: Icon(Icons.search, color: BasicColors.grey,size: 17,),
        suffixIcon: Icon(Icons.tune, color: BasicColors.lightGreen,size: 17,),
        focusedBorder: border,
        border: border,
        enabledBorder: border,
        disabledBorder: border
        
      ),
    );
  }
}
