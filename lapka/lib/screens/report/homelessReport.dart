import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/components/basic/basicImagePicker.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class HomelessReportPage extends StatelessWidget {
   HomelessReportPage({ Key? key }) : super(key: key);

  final TextEditingController localizationController = TextEditingController();
  final TextEditingController infoController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  _listCallback(List<String>photos) {
    print('callback : ${photos.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        fade: true,
        title: "Zgłoszenia",
        showBack: true,
      ),
      body: Stack(
        children: [
          Container(margin: EdgeInsets.only(top: 133), color: BasicColors.lightGrey,),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 33,
                  decoration: BoxDecoration(
                      color: BasicColors.lightGrey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33))),
                ),
                Container(
                  color: BasicColors.lightGrey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          BasicFormField(controller: localizationController,placeholder: 'Podaj potencjalną lokalizację zwierząt',trailling: Icon(Icons.near_me, color: BasicColors.darkGreen.withOpacity(0.5),size: 30,),),
                          SizedBox(height: 16,),
                          BasicImagePicker(onListChange: _listCallback),
                          SizedBox(height: 16,),
                          BasicFormField(controller: infoController,placeholder: 'Dodaj info dla schroniska',maxLines: 5,),
                          SizedBox(height: 32,),
                          BasicText.body14('Kontakt', color: BasicColors.darkGrey,),
                          SizedBox(height: 16,),
                          BasicFormField(controller: nameController,placeholder: 'Imię'),
                          SizedBox(height: 16,),
                          BasicFormField(controller: phoneController,placeholder: 'Wpisz numer telefonu'),
                          SizedBox(height: 16,),
                          BasicButton(onPressed: (){}, text: "POWIADOM SCHRONISKO",color: BasicColors.lightGreen,),
                          SizedBox(height: 16,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}