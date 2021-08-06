import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class PetCard extends StatelessWidget { 
  
  const PetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BasicColors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Stack(children: [
            Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(14))),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(16),
              child: Container(
                height: 32,
                width: 32,
                decoration: new BoxDecoration(
                  color: BasicColors.darkGrey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Icon(
                  Icons.favorite,
                  color: BasicColors.white,
                  size: 16,
                )),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicText.heading1Bold('Moniak'),
                    Icon(
                      Icons.male,
                      color: BasicColors.darkGreen,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: BasicText.subtitleLight('Kundelek')),
                SizedBox(height: 14),
                Row(
                  children: [
                    Icon(Icons.date_range,
                        size: 14, color: BasicColors.darkGreen),
                    SizedBox(
                      width: 8,
                    ),
                    BasicText.body14Light('1 rok')
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14, color: BasicColors.darkGreen),
                    SizedBox(
                      width: 8,
                    ),
                    BasicText.body14Light('Schronisko Pudelek, Rzeszów (2.5km)')
                  ],
                ),
                SizedBox(height: 22),
              ],
            ),
          ),
          Container(
            height: 42,
            decoration: BoxDecoration(
                color: BasicColors.lightGreen,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BasicText.subtitleBold("Poznaj mnie",color: BasicColors.white,),
                SizedBox(width: 6,),
                Icon(Icons.pets, color: BasicColors.white,size:  20)
              ],
            ),
          )
        ],
      ),
    );
  }
}
