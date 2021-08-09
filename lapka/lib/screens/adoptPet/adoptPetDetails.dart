import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetDetails extends StatelessWidget {
  const AdoptPetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        transparent: true,
        title: '',
        showBack: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    color: Colors.red,
                  ),
                  Container(
                    padding: EdgeInsets.only(top:197, right: 20),
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: new BoxDecoration(
                        color: BasicColors.darkGrey.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.photo_camera,
                        color: BasicColors.white,
                        size: 24,
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 255, left: 20, right: 20),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
      BoxShadow(
        color: BasicColors.shadow,
        spreadRadius: 0,
        blurRadius: 20,
        offset: Offset(2, 3), // changes position of shadow
      ),
    ],
                    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BasicText.heading1Bold('Name'),
          
                        BasicText.subtitleLight('Rasa')
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right:18),
                    child: SvgPicture.asset(
                        'lib/assets/famale-symbol.svg',
                        color: BasicColors.darkGreen,
                        width: 55,
                        height: 55,
                      ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
