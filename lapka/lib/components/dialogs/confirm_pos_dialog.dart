import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/cancel_button.dart';
import 'package:lapka/screens/report/homeless_report.dart';
import 'package:lapka/settings/colors.dart';

class ConfirmPosDialog extends StatelessWidget {
  const ConfirmPosDialog(
      {Key? key, required this.onAccept, required this.onCancel})
      : super(key: key);
  final Function() onCancel;
  final Function() onAccept;
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BasicText.heading2(
                        'Czy chcesz zatwierdzić tę lokacje?',
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
                                  text: 'Usuń',
                                  onPressed: () {
                                    onCancel();
                                  }),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              child: BasicButton(
                                  text: 'Zatwierdź',
                                  onPressed: () {
                                    onAccept();
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
            ),
          ),
          Container(
            height: 44,
            alignment: Alignment.topRight,
            child: CancelButton(
                onPressed: () =>
                    Navigator.of(context, rootNavigator: false).pop()),
          )
        ],
      ),
    );
  }
}
