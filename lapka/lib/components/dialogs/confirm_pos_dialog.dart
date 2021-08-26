import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/cancel_button.dart';
import 'package:lapka/screens/report/homeless_report.dart';
import 'package:lapka/settings/colors.dart';

class ConfirmPosDialog extends StatelessWidget {
  const ConfirmPosDialog({Key? key, required this.onExit, required this.onLogin}) : super(key: key);
  final Function() onLogin;
  final Function() onExit;
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
                  children: [
                    BasicText.heading2('Czy chcesz zatwierdzić tę lokację?'),
                    BasicButton(onPressed: (){}, text: 'Tak',),
                    SizedBox(height: 15,),
                    BasicButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomelessReportPage()));}, text: 'WYJDŹ')
                  ]
                )
              ),
            ),
          ),
          Container(
            height: 44,
            alignment: Alignment.topRight,
            child: CancelButton(
                onPressed: onExit
            ),
          )
        ],
      ),
    );
  }
}
