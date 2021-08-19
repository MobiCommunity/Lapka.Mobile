import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/providers/menuProvider.dart';
import 'package:lapka/settings/colors.dart';
import 'package:provider/provider.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final Function onMenuItemClicked;

  const Menu(
      {Key? key,
      required this.slideAnimation,
      required this.menuAnimation,
      required this.onMenuItemClicked})
      : super(key: key);

  _buildMenuItem(
      {required Widget widget, required String name, required IconData icon}) {
    return InkWell(
      onTap: () {
        onMenuItemClicked(widget);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: BasicColors.white,
            size: 25,
          ),
          SizedBox(width: 20),
          BasicText.subtitleLight(
            name,
            color: BasicColors.white,
          )
        ],
      ),
    );
  }

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
                _avatarBuilder(),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Wiadomości',
                    icon: Icons.mail),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Ulubione zwierzaki',
                    icon: Icons.favorite),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Adopcja',
                    icon: Icons.pets),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Moje zwierzaki',
                    icon: Icons.account_box),
                _smallLineSpacer(),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.ReportPage]!,
                    name: 'Zgłoszenia',
                    icon: Icons.add_box),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Zaginione zwierzaki',
                    icon: Icons.house),
                _smallLineSpacer(),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.VolunteerPage]!,
                    name: 'Wolontariat',
                    icon: Icons.volunteer_activism),
                _smallLineSpacer(),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Ustawienia',
                    icon: Icons.settings),
                Container(),
                _bigLineSpacer(),
                _buildMenuItem(
                    widget: context
                        .read<MenuProvider>()
                        .screens[Screens.AdoptPageList]!,
                    name: 'Wyloguj się',
                    icon: Icons.logout),
                Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _bigLineSpacer() {
    return Container(
      width: 195,
      height: 1,
      color: BasicColors.white,
    );
  }

  Padding _smallLineSpacer() {
    return Padding(
      padding: EdgeInsets.only(left: 45),
      child: Container(
        width: 150,
        height: 1,
        color: BasicColors.white,
      ),
    );
  }

  Row _avatarBuilder() {
    return Row(
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
    );
  }
}
