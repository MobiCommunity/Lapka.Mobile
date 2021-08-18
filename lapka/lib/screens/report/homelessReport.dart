import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class HomelessReport extends StatelessWidget {
   HomelessReport({ Key? key }) : super(key: key);

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
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      BasicFormField(controller: localizationController,placeholder: 'Podaj potencjalną lokalizację zwierząt',trailling: Icon(Icons.near_me, color: BasicColors.lightGreen.withOpacity(0.5),size: 30,),),
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
                      BasicButton(onPressed: (){}, text: "POWIADOM SCHRONISKO",color: BasicColors.darkGreen,),
                      SizedBox(height: 16,)
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
class BasicImagePicker extends StatefulWidget {
  final Function(List<String> photos) onListChange;

  BasicImagePicker({ Key? key, required this.onListChange}) : super(key: key);

  @override
  _BasicImagePickerState createState() => _BasicImagePickerState();
}

class _BasicImagePickerState extends State<BasicImagePicker> {
  final ImagePicker _picker = ImagePicker();

  List<String> photos= [];

  _deletePhoto(int idx ){
    photos.removeAt(idx);
    widget.onListChange(photos);
    
    setState(() {
      
    });
  }

  _showPicker()async{
    final List<XFile>? images = (await _picker.pickMultiImage())??[];
    if(images!.length != 0){
        print(images.length);
        for (var item in images) {
          print(item.path);
          photos.add(item.path);
        
        }
        widget.onListChange(photos);
        setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
        onTap: ()async{
          _showPicker();
        },
          child: DottedBorder(
            dashPattern: [3,3],
            borderType: BorderType.RRect,
            radius: Radius.circular(8),
            color: BasicColors.greyOutlineBorder,
            child: Container(
              width : double.infinity,
              decoration: BoxDecoration(
                color: BasicColors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                    child: BasicText.body14('Dodaj zdjęcie / galerię', color: BasicColors.darkGrey.withOpacity(0.3),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.photo_camera_outlined, color: BasicColors.lightGreen.withOpacity(0.5),size: 25,),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8,),
        photos.length>0 ?
        Container(
          child: GridView.count(
            primary: false,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            crossAxisCount: 3,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
          childAspectRatio: 1,
          children: [for(var i = 0; i < photos.length; i++) 
            GridViewPhoto(photoUrl: photos[i], idx: i,delete: _deletePhoto,)
          ]
          ),
        ):Container()
      ],
    );
  }
}

class GridViewPhoto extends StatelessWidget {
  final String photoUrl;
  final int idx;
  final Function(int idx) delete;
  const GridViewPhoto({
    Key? key,
    required this.photoUrl,
    required this.idx,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Image.file(File(photoUrl),fit: BoxFit.cover,)),
        InkWell(
          onTap: (){
            delete(idx);
          },
          child: Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(8),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: BasicColors.darkGrey
              ),
              child: Center(
                child: SvgPicture.asset('lib/assets/small-x.svg',),
              ),
            ),
          ),
        )
      ],
    );
  }
}