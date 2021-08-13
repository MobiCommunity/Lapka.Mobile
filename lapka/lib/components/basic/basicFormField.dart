import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/textStyles.dart';

class BasicFormField extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final bool password;


  BasicFormField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
  }) : super(key: key,);

  @override
  _BasicFormFieldState createState() => _BasicFormFieldState();
}

class _BasicFormFieldState extends State<BasicFormField> {
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
    return TextField(
      controller: widget.controller,
      style: subtitleLight.copyWith(color: BasicColors.white),
      obscureText: _visibility,
      cursorColor: BasicColors.white,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        filled: true,
        fillColor: Colors.transparent,
        prefixIcon: widget.leading,
        suffixIcon: widget.password
            ? GestureDetector(
          onTap: (){
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
          borderSide: BorderSide(color: Colors.red),
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