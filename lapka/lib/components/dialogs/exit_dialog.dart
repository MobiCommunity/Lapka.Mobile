import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/cancel_button.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/bloc/navigator_bloc.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';

class ExitDialog extends StatelessWidget {
  // final Function() onCancel;
  // final Function() onExit;
  const ExitDialog({Key? key /*,required this.onExit, required this.onCancel*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 11),
            child: Container(
              decoration: BoxDecoration(
                  color: BasicColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BasicText.heading2Bold('Uppps'),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BasicText.body14Light(
                        'Czy napewno chcesz wyjść z aplikacji?',
                        center: true,
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: BasicButton(
                                  color: BasicColors.white,
                                  textColor:
                                      BasicColors.darkGrey.withOpacity(0.8),
                                  text: 'Pozostań',
                                  onPressed: () =>
                                      Navigator.of(context, rootNavigator: true)
                                          .pop(false)),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              child: BasicButton(
                                  text: 'Wyjdź',
                                  onPressed: () =>
                                      Navigator.of(context, rootNavigator: true)
                                          .pop(true)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 44,
            alignment: Alignment.topRight,
            child: CancelButton(
                onPressed: () =>
                    Navigator.of(context, rootNavigator: true).pop(false)),
          )
        ],
      ),
    );
  }
}
