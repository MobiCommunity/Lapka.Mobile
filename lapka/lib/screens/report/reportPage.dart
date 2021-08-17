import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        fade: true,
        title: "Zgłoszenia",
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 33,
              decoration: BoxDecoration(
                  color: BasicColors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33))),
            ),
            Container(
              color: BasicColors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ReportCard(
                      title: 'Błąkające się zwierzęta',
                      body: 'Zgłoszenia lokalizacji błąkających się zwierzaków',
                      assetSvg: 'lib/assets/dog-face.svg',
                      onPressCallback: () {},
                    ),
                    SizedBox(height: 16,),
                    ReportCard(
                      title: 'Wymagające sterylizacji',
                      body: 'Zgłoszenia lokalizacji zwierzaków do sterylizacji',
                      assetSvg: 'lib/assets/scissors.svg',
                      onPressCallback: () {},
                    ),
                    SizedBox(height: 16,),
                    ReportCard(
                      title: 'Zgłoszenia zaginięcia',
                      body: 'Zgłoszenia zaginięcia wraz z potencjalną lokalizacją',
                      assetSvg: 'lib/assets/megaphone.svg',
                      onPressCallback: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final Function() onPressCallback;
  final String title, body, assetSvg;

  const ReportCard({
    Key? key,
    required this.title,
    required this.body,
    required this.assetSvg,
    required this.onPressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressCallback,
      child: Container(
        decoration: BoxDecoration(
            color: BasicColors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: BasicColors.shadow,
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(2, 3),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                child: Column(
                  children: [
                    BasicText.heading2Bold(title),
                    SizedBox(
                      height: 8,
                    ),
                    BasicText.body14Light(
                      body,
                      color: BasicColors.darkGrey.withOpacity(0.5),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
                flex: 2,
                child: SvgPicture.asset(
                  assetSvg,
                ))
          ],
        ),
      ),
    );
  }
}
