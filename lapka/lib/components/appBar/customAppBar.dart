import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final String localization;
  final bool showLocalization;
  final bool showBack;
  final bool transparent;
  final bool customTrailling;
  final Widget? trailling;

  const CustomAppBar(
      {Key? key,
      this.showLocalization = false,
      this.showBack = false,
      this.transparent = false,
      this.customTrailling = false,
      this.trailling,
      this.title = "",
      this.localization = ""})
      : preferredSize = const Size.fromHeight(75.0),
        super(key: key);

  _back(context){
    Navigator.pop(context);
  }

  _openDrawer(context){
    Scaffold.of(context).openDrawer();
  }

  _openAccount(){
    print('Account');
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shadowColor: Colors.transparent,
      backgroundColor: transparent ? Colors.transparent : BasicColors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showBack
              ? InkWell(
                  onTap: (){_back(context);},
                  child: Icon(
                    Icons.arrow_back,
                    color: transparent ? BasicColors.white : BasicColors.darkGrey,
                  ))
              : InkWell(
                  onTap: (){
                    _openDrawer(context);
                  },
                  child: SvgPicture.asset('lib/assets/menu-icon.svg', color: transparent ? BasicColors.white : BasicColors.darkGrey,)),
          showLocalization
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BasicText.body14(
                      'Lokalizacja',
                      color: BasicColors.lightGrey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.place,
                          color: BasicColors.lightGreen,
                        ),
                        BasicText.body14Bold(localization),
                      ],
                    )
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BasicText.body14(
                      title,
                      color: BasicColors.lightGrey,
                    ),
                  ],
                ),
          customTrailling
              ? trailling!
              : InkWell(
                  onTap: _openAccount,
                  child: CircleAvatar(
                    backgroundColor: BasicColors.lightGrey,
                  ),
                  radius: 20,
                ),
        ],
      ),
    );
  }
}
