import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';
import 'package:lapka/utils/validators.dart';

class BasicFormField extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? trailling;
  final int maxLines;
  final bool enabled;
  final Function validator;
  final TextInputType textInputType;

  BasicFormField(
      {Key? key,
      required this.controller,
      this.placeholder = '',
      this.enabled = true,
      this.trailling,
      this.maxLines = 1,
      this.validator = Validators.defaultValidator,
      this.textInputType = TextInputType.text})
      : super(
          key: key,
        );

  @override
  _BasicFormFieldState createState() => _BasicFormFieldState();
}

class _BasicFormFieldState extends State<BasicFormField> {
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (text) => widget.validator(text),
      controller: widget.controller,
      style: body14Light.copyWith(color: BasicColors.darkGrey),
      cursorColor: BasicColors.darkGrey,
      maxLines: widget.maxLines,
      enabled: widget.enabled,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        hintStyle:
            body14.copyWith(color: BasicColors.darkGrey.withOpacity(0.3)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: widget.trailling,
        ),
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
    );
  }
}
