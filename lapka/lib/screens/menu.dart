import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu(
      {Key? key,
      required this.slideAnimation,
      required this.menuAnimation,
      required this.selectedIndex,
      required this.onMenuItemClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(),
                Row(
                  children: [
                    DottedBorder(
                        borderType: BorderType.Circle,
                        color: BasicColors.white,
                        dashPattern: [7, 5],
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          radius: 33,
                          backgroundColor: BasicColors.darkGrey,
                        )),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BasicText.overlineLight(
                          'email@gmail.com',
                          color: BasicColors.white,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.place,
                              color: BasicColors.white,
                              size: 10,
                            ),
                            BasicText.captionLight(
                              'Example',
                              color: BasicColors.white,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Wiadomości',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Ulubione zwierzaki',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pets,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Adopcja',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_box,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Moje zwierzaki',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Container(
                    width: 150,
                    height: 1,
                    color: BasicColors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_box,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Zgłoszenia',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.house,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Zaginięte zwirzaki',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Container(
                    width: 150,
                    height: 1,
                    color: BasicColors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.volunteer_activism,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Wolontariat',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Container(
                    width: 150,
                    height: 1,
                    color: BasicColors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Ustawienia',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Container(),
                Container(
                  width: 195,
                  height: 1,
                  color: BasicColors.white,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: BasicColors.white,
                      size: 25,
                    ),
                    SizedBox(width: 20),
                    BasicText.subtitleLight(
                      'Wyloguj się',
                      color: BasicColors.white,
                    )
                  ],
                ),
                Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
