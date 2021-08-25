import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/settings/colors.dart';

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
                    child: Icon(Icons.photo_camera_outlined, color: BasicColors.darkGreen.withOpacity(0.5),size: 25,),
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