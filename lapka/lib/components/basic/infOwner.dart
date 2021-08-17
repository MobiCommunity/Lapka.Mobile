import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/components/basic/msgOwnerButton.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/components/basic/customCheckbox.dart';
import 'package:url_launcher/url_launcher.dart';


class InfOwner extends StatefulWidget{
  final Widget petImg;
  final int phoneNumber;

  const InfOwner({required this.petImg, required this.phoneNumber});

  @override
  _InfOwnerState createState() => _InfOwnerState();
}

class _InfOwnerState extends State<InfOwner> {
  bool inHome = false;
  changeState(bool state){
    setState(() {
      inHome = state;
    });
  }

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
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        widget.petImg,
                        SizedBox(width: 10, height: 0),
                        BasicText.body14Bold('Widziałem tego zwierzaka!')
                      ],
                    ),
                    SizedBox(height: 20, width: 0),
                    BasicText.body14Bold('To zwierzę jest u mnie w domu'),
                    SizedBox(height: 16, width: 0),
                    Row(
                      children: [
                        CustomCheckbox(isChecked: inHome, onPressCallback: (){changeState(true);},),
                        SizedBox(width: 8, height: 0,),
                        BasicText.body14Light('Tak'),
                        SizedBox(width: 83, height: 0,),
                        CustomCheckbox(isChecked: !inHome, onPressCallback: (){changeState(false);},),
                        SizedBox(width: 8, height: 0,),
                        BasicText.body14Light('Nie'),
                      ],
                    ),
                    SizedBox(height: 22, width: 0),
                    Container(height: 1, width: double.infinity, color: BasicColors.lightGrey,),
                    SizedBox(height: 22, width: 0),
                    BasicText.body14Bold('Kontakt do właściciela'),
                    SizedBox(height: 4, width: 0),
                    BasicText.body14Light('Ostatnia prosta! Dzięki Tobie Monia wkrótce wróci do domu. Skontaktuj się z właścicielem zwierzaka telefonicznie lub za pośrednictwem naszej aplikacji.'),
                    SizedBox(height: 12, width: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              SvgPicture.asset('lib/assets/phone-icon.svg'),
                              SizedBox(height: 0, width: 8),
                              BasicText.body14Light((widget.phoneNumber.toString()).replaceAllMapped(RegExp(r".{3}"), (match) => "${match.group(0)} ")),
                              BasicText.body14Light((widget.phoneNumber.toString()).replaceFirstMapped(RegExp(r".{2}"), (match) => "${match.group(0)} ").replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ")),
                            ],
                          ),
                        ),
                        MsgOwnerButton(onPressed: () async {
                          // Android
                          String uri = 'sms:${widget.phoneNumber.toString()}';
                          if (await canLaunch(uri)) {
                            await launch(uri);
                          } else {
                            // iOS

                            if (await canLaunch(uri)) {
                              await launch(uri);
                            } else {
                              throw 'Could not launch $uri';
                            }
                          };}, text: 'NAPISZ WIADOMOŚĆ',),
                      ],
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

