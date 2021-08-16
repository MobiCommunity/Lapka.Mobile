import 'package:flutter/material.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/screens/adoptPet/adoptPetListPage.dart';
import 'package:lapka/screens/dasboard.dart';
import 'package:lapka/settings/colors.dart';
import 'menu.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashboardLayout extends StatefulWidget {
  @override
  _MenuDashboardLayoutState createState() => _MenuDashboardLayoutState();
}

class _MenuDashboardLayoutState extends State<MenuDashboardLayout>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 200);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuScaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onMenuTap() {
    setState(() {
      if (isCollapsed)
        _controller.forward();
      else
        _controller.reverse();

      isCollapsed = !isCollapsed;
    });
  }

  void onMenuItemClicked() {
    setState(() {
      _controller.reverse();
    });

    isCollapsed = !isCollapsed;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: BasicColors.lightGreen,
      body: Stack(
        children: [
          Menu(
              slideAnimation: _slideAnimation,
              menuAnimation: _menuScaleAnimation,
              selectedIndex: findSelectedIndex(),
              onMenuItemClicked: onMenuItemClicked),
          Dashboard(
              duration: duration,
              onMenuTap: onMenuTap,
              scaleAnimation: _scaleAnimation,
              isCollapsed: isCollapsed,
              screenWidth: screenWidth,
              child: AdoptPetListPage()),
          CancelButton(onPressed: onMenuTap)
        ],
      ),
    );
  }

  int findSelectedIndex(/*NavigationStates navigationState*/) {
    return 1;
    // if (navigationState is MyCardsPage) {
    //   return 0;
    // } else if (navigationState is MessagesPage) {
    //   return 1;
    // } else if (navigationState is UtilityBillsPage) {
    //   return 2;
    // } else {
    //   return 0;
    // }
  }
}
