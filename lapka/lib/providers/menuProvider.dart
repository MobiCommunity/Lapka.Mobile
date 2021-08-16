import 'package:flutter/material.dart';
import 'package:lapka/screens/adoptPet/adoptPetListPage.dart';
enum Screens{AdoptPageList}
class MenuProvider with ChangeNotifier{
  Function() onMenuClick = (){};
  Map<Screens,Widget> screens = {
    Screens.AdoptPageList : AdoptPetListPage()
  };
  
}