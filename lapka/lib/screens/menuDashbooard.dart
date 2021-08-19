import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/providers/menuProvider.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/screens/adoptPet/adoptPetListPage.dart';
import 'package:lapka/screens/dasboard.dart';
import 'package:lapka/settings/colors.dart';
import 'menu.dart';
import 'package:provider/provider.dart';


class MenuDashboardLayout extends StatefulWidget {
  final Widget initialPage;
  MenuDashboardLayout(this.initialPage);

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
  late Widget current;
  List<Widget> list = [AdoptPetListPage(), Scaffold(appBar: CustomAppBar(),)];

  @override
  void initState() {
    super.initState();
    current = widget.initialPage;
    context.read<MenuProvider>().onMenuClick = onMenuTap;
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.9).animate(_controller);
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

  void onMenuItemClicked(Widget newWidget) {
    current = newWidget;
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

    return GestureDetector(
      onPanUpdate: (details){
                  if (details.delta.dx < -15 && !isCollapsed) {
                        onMenuTap();
                  }
            },
      child: Scaffold(
        backgroundColor: BasicColors.darkGreen,
        body: Stack(
          children: [
            Menu(
                slideAnimation: _slideAnimation,
                menuAnimation: _menuScaleAnimation,
                onMenuItemClicked: onMenuItemClicked),
            Dashboard(
                duration: duration,
                scaleAnimation: _scaleAnimation,
                isCollapsed: isCollapsed,
                screenWidth: screenWidth,
                child: IgnorePointer(
                  ignoring: !isCollapsed,
                  child: current)),
          ],
        ),
      ),
    );
  }
}
