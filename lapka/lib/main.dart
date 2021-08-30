import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/dialogs/exit_dialog.dart';
import 'package:lapka/components/dialogs/no_internet_dialog.dart';
import 'package:lapka/providers/location/bloc/location_bloc.dart';
import 'package:lapka/providers/loginProvider.dart';
import 'package:lapka/providers/menuProvider.dart';
import 'package:lapka/providers/my_pets/bloc/edit_my_pets_bloc.dart';
import 'package:lapka/providers/my_pets/bloc/my_pets_bloc.dart';
import 'package:lapka/providers/shelter/bloc/shelter_list_bloc.dart';
import 'package:lapka/repository/adopt_pet_repository.dart';
import 'package:lapka/repository/location_repository.dart';
import 'package:lapka/repository/my_pets_repository.dart';
import 'package:lapka/repository/shelter_repository.dart';
import 'package:lapka/screens/adopt_pet/adopt_pet_list_page.dart';
import 'package:lapka/screens/menu_dashbooard.dart';
import 'package:lapka/settings/naviagtion/bloc/navigator_bloc.dart';
import 'package:lapka/settings/naviagtion/my_router_delegate.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:provider/provider.dart';

import 'providers/adopt_pet/bloc/adopt_pet_list_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final myPetsBloc = MyPetsBloc(MyPetsRepositoryFake());
  //final editMyPetsBloc = EditMyPetsBloc(MyPetsRepositoryFake(), myPetsBloc);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AdoptPetListBloc(AdoptPetRepositoryApi()),
        ),
        BlocProvider(
          create: (context) => ShelterListBloc(ShelterRepositoryApi()),
        ),
        BlocProvider(
          create: (context) => LocationBloc(LocationRepository()),
        ),
        BlocProvider(
          create: (context) => myPetsBloc,
        ),
        BlocProvider(
          create: (context) =>
              EditMyPetsBloc(MyPetsRepositoryFake(), myPetsBloc),
        ),
        BlocProvider(
          create: (context) => NavigatorBloc(),
        ),
      ],
      child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => LoginProvider()),
            ChangeNotifierProvider(create: (_) => MenuProvider()),
          ],
          child: MaterialApp(
            theme: ThemeData(
                textTheme: GoogleFonts.ubuntuTextTheme(
                  Theme.of(context).textTheme,
                ),
                scaffoldBackgroundColor: Colors.white),
            home: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowGlow();
                  return true;
                },
                child: MyHomePage()),
          )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var subscription;
  @override
  initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    _internetListenerInit();
  }

  _internetListenerInit() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        BasicDialog.showDialogCustom(context, NoInternetDialog());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          NavigatorHelper.pop(context);
          return false;
        },
        child:
            MenuDashboardLayout(Router(routerDelegate: MyAppRouterDelegate())));
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }
}
