import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  final String text;
  final Function() onPressCallback;

  CustomCheckbox(
      {required this.isChecked,
      this.size = 16,
      this.text = '',
      this.iconSize = 7,
      required this.onPressCallback});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: widget.onPressCallback,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: widget.isChecked
                      ? BasicColors.darkGreen
                      : BasicColors.darkGrey,
                )),
            width: widget.size,
            height: widget.size,
            child: widget.isChecked
                ? Icon(
                    Icons.brightness_1_rounded,
                    color: BasicColors.darkGreen,
                    size: widget.iconSize,
                  )
                : null,
          ),
        ),
        widget.text != ''
            ? Padding(
                padding: EdgeInsets.only(left: 8),
                child: BasicText.body14(widget.text),
              )
            : Container()
      ],
    );
  }
}
