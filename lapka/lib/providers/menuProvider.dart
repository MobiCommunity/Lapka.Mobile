import 'package:flutter/material.dart';
import 'package:lapka/screens/adopt_pet/adopt_pet_list_page.dart';
import 'package:lapka/screens/myPets/myPetsPage.dart';
import 'package:lapka/screens/report/report_page.dart';
import 'package:lapka/screens/volunteer/volunteer_page.dart';
enum Screens{AdoptPageList,VolunteerPage,ReportPage, MyPetsPage}
class MenuProvider with ChangeNotifier{
  Function() onMenuClick = (){};
  Map<Screens,Widget> screens = {
    Screens.AdoptPageList : AdoptPetListPage(),
    Screens.VolunteerPage : VolunteerPage(),
    Screens.ReportPage : ReportPage(),
    Screens.MyPetsPage : MyPetsPage(),
  };
  
}