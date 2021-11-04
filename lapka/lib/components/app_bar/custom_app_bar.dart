import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/providers/menuProvider.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/bloc/navigator_bloc.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final String localization;
  final bool showLocalization;
  final bool showBack;
  final bool fade;
  final bool customTrailling;
  final Widget? trailling;

  const CustomAppBar(
      {Key? key,
      this.showLocalization = false,
      this.showBack = false,
      this.fade = false,
      this.customTrailling = false,
      this.trailling,
      this.title = "",
      this.localization = ""})
      : preferredSize = const Size.fromHeight(75.0),
        super(key: key);

  _back(BuildContext context) {
    NavigatorHelper.pop(context);
  }

  _openDrawer(BuildContext context) {
    context.read<MenuProvider>().onMenuClick();
  }

  _openAccount() {
    print('Account');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        fade
            ? Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.8, 1],
                        colors: [Colors.white, Colors.white.withOpacity(0.0)])),
              )
            : Container(),
        AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              showBack
                  ? InkWell(
                      onTap: () {
                        _back(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: fade ? BasicColors.darkGrey : BasicColors.white,
                      ))
                  : InkWell(
                      onTap: () {
                        _openDrawer(context);
                      },
                      child: SvgPicture.asset(
                        'lib/assets/menu-icon.svg',
                        color: BasicColors.darkGrey,
                      )),
              showLocalization
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BasicText.body14(
                          'Lokalizacja',
                          color: BasicColors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.place,
                              color: BasicColors.darkGreen,
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
                          color: BasicColors.grey,
                        ),
                      ],
                    ),
              customTrailling
                  ? trailling!
                  : InkWell(
                      onTap: _openAccount,
                      child: CircleAvatar(
                        backgroundColor: BasicColors.grey,
                      ),
                      radius: 20,
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
