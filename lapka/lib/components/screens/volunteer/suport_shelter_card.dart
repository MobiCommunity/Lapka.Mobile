import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/dialogs/help_dialog.dart';
import 'package:lapka/settings/colors.dart';

class SupportSchelterCard extends StatelessWidget {
  
  const SupportSchelterCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: BasicColors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            BasicText.subtitleBold("Wesprzyj schronisko finansowo"),
            SizedBox(height: 6,),
            BasicText.body14Light('Wybierz dowolną kwotę i wesprzyj nasze schronisko. Twoja wpłata pozwoli nam zakupić najpilniejsze rzeczy.', color: BasicColors.darkGrey.withOpacity(0.8),),
            SizedBox(height: 14,),
            BasicButton(onPressed: (){
              BasicDialog.showDialogCustom(context, HelpDialog(accountNumber: '1122223333444455556666'));
            },text: "WESPRZYJ SCHRONISKO",color: BasicColors.lightGreen,)
          ],),
        ),
    );
  }
}
