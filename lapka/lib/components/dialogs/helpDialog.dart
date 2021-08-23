import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/components/basic/msgOwnerButton.dart';
import 'package:lapka/components/screens/adoptPet/shelterComp.dart';
import 'package:lapka/settings/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpDialog extends StatelessWidget {
  final String accountNumber;

  HelpDialog({required this.accountNumber});

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
                borderRadius: BorderRadius.circular(12),
                color: BasicColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 26, bottom: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ShelterComp(
                        shelterName: 'Psiaki Adopciaki z Psiej Wioski',
                        logoWidget: Container(
                            height: 32, width: 30, color: BasicColors.grey),
                        upperText: '(2.5 km) Rzeszów,',
                        lowerText: 'ul. Krakowska 12'),
                    SizedBox(
                      height: 1,
                      width: 11,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 16, width: 0),
                          Container(
                            height: 1,
                            color: BasicColors.grey,
                          ),
                          SizedBox(height: 17, width: 0),
                          BasicText.body14Light(
                              'Rodzaj pomocy: Wyjdź na spacer! '),
                          SizedBox(height: 11, width: 0),
                          BasicText.body14Light(
                              'Dziękujemy za to, że chcesz nam pomóc. To dużo dla nas znaczy. Aby móc zrealizować tę formę pomocy skontaktuj się z nami i się umów na dokładny termin pomocy.'),
                          SizedBox(height: 23, width: 0),
                          Row(
                            children: [
                              SvgPicture.asset('lib/assets/phone-icon.svg'),
                              SizedBox(width: 3, height: 0),
                              BasicText.body14Light('+48 123 456 789'),
                            ],
                          ),
                          SizedBox(width: 0, height: 9),
                          Row(
                            children: [
                              Icon(Icons.mail,
                                  color: BasicColors.lightGreen, size: 14),
                              SizedBox(width: 3, height: 0),
                              BasicText.body14Light('mail@mail.com'),
                            ],
                          ),
                          SizedBox(height: 7, width: 0),
                          Padding(
                            padding: const EdgeInsets.only(right: 113.0),
                            child: MsgOwnerButton(
                              onPressed: () async {
                                // Android
                                String uri = 'sms:${'+48 123 456 789'}';
                                if (await canLaunch(uri)) {
                                  await launch(uri);
                                } else {
                                  // iOS

                                  if (await canLaunch(uri)) {
                                    await launch(uri);
                                  } else {
                                    throw 'Could not launch $uri';
                                  }
                                }
                                ;
                              },
                              text: 'NAPISZ WIADOMOŚĆ',
                            ),
                          ),
                          SizedBox(height: 16, width: 0),
                          Row(
                            children: [
                              SvgPicture.asset('lib/assets/facebook-logo.svg'),
                              SizedBox(width: 16, height: 0),
                              SvgPicture.asset('lib/assets/instagram-logo.svg'),
                              SizedBox(width: 16, height: 0),
                              SvgPicture.asset('lib/assets/linkedin-logo.svg'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21, width: 0),
                    Container(
                      height: 1,
                      color: BasicColors.grey,
                    ),
                    SizedBox(height: 24, width: 0),
                    BasicText.body14Light(
                        'Chcesz wesprzeć schronisko finansowo? Skopiuj poniższy numer konta i wykonaj przelew korzystając z aplikacji swojego banku.'),
                    SizedBox(height: 12, width: 0),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: BasicColors.lightGrey,
                          borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                                child: BasicText.body14Light(
                              (accountNumber.toString())
                                  .replaceFirstMapped(RegExp(r".{2}"),
                                      (match) => "${match.group(0)} ")
                                  .replaceAllMapped(RegExp(r"\d{4}"),
                                      (match) => "${match.group(0)} "),
                              center: true,
                            )),
                            InkWell(
                              onTap: () {
                                print('ravioli');
                                Clipboard.setData(
                                    ClipboardData(text: accountNumber));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      elevation: 0,
                                      backgroundColor: Colors.transparent,
                                      padding: EdgeInsets.zero,
                                        content:
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                child: Container(
                                                  padding: EdgeInsets.all(16),
                                                  color: BasicColors.white,
                                                  child: BasicText.body14('Skopiowano!')),
                                              ),
                                            )));
                              },
                              child:
                                  SvgPicture.asset('lib/assets/copy-icon.svg'),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 44,
            alignment: Alignment.topRight,
            child: CancelButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
