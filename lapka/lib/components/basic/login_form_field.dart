import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';
import 'package:lapka/utils/validators.dart';

class LoginFormField extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final bool password;
  final Function validator;

  LoginFormField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
    this.validator = Validators.defaultValidator,
  }) : super(
          key: key,
        );

  @override
  _LoginFormFieldState createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  late bool _visibility;
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
  @override
  void initState() {
    _visibility = widget.password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (text) => widget.validator(text),
      controller: widget.controller,
      style: subtitleLight.copyWith(color: BasicColors.white),
      obscureText: _visibility,
      cursorColor: BasicColors.white,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        hintStyle: body14.copyWith(color: BasicColors.white.withOpacity(0.6)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        filled: true,
        fillColor: Colors.transparent,
        prefixIcon: widget.leading,
        suffixIcon: widget.password
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _visibility = !_visibility;
                  });
                },
                child: Icon(
                  Icons.visibility,
                  color: BasicColors.white,
                  size: 22,
                ),
              )
            : null,
        border: circularBorder.copyWith(
          borderSide: BorderSide(color: BasicColors.white),
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: BasicColors.white),
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: BasicColors.white),
        ),
      ),
    );
  }
}
