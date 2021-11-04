import 'package:flutter/material.dart';

class BasicDialog {
  static Future<dynamic> showDialogCustom(BuildContext context, Widget modal,
      {dismissible = true}) {
    return showDialog(
        barrierDismissible: dismissible,
        context: context,
        useRootNavigator: false,
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
