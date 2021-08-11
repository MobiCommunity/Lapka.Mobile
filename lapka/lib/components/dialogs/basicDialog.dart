import 'package:flutter/material.dart';

class BasicDialog {
  final bool dismissible;

  BasicDialog.showDialog(BuildContext context, Widget modal,{this.dismissible = true}) {
    showDialog(
        barrierDismissible: dismissible,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.all(0),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: modal,
          );
        });
  }
}
