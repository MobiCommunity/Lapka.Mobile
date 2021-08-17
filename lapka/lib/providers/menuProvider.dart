import 'package:flutter/material.dart';
import 'package:lapka/screens/adoptPet/adoptPetListPage.dart';
import 'package:lapka/screens/report/reportPage.dart';
import 'package:lapka/screens/volunteer/volunteerPage.dart';
enum Screens{AdoptPageList,VolunteerPage,ReportPage}
class MenuProvider with ChangeNotifier{
  Function() onMenuClick = (){};
  Map<Screens,Widget> screens = {
    Screens.AdoptPageList : AdoptPetListPage(),
    Screens.VolunteerPage : VolunteerPage(),
    Screens.ReportPage : ReportPage(),
  };
  
}