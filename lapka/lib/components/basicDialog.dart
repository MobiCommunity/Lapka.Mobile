import 'package:flutter/material.dart';

class BasicDialog {
  BasicDialog.showDialog(BuildContext context, Widget modal) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: modal,
          );
        });
  }
}
