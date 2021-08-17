import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/loadingIndicator.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/components/dialogs/noInternetDialog.dart';
import 'package:lapka/providers/adoptPetProvider.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/providers/loginProvider.dart';
import 'package:lapka/providers/menuProvider.dart';
import 'package:lapka/providers/shelterProvider.dart';
import 'package:lapka/screens/adoptPet/adoptPetListPage.dart';
import 'package:lapka/screens/login/loginPage.dart';
import 'package:lapka/screens/menuDashbooard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginProvider()),
          ChangeNotifierProvider(create: (_) => LocationProvider()),
          ChangeNotifierProvider(create: (_) => AdoptPetProvider()),
          ChangeNotifierProvider(create: (_) => MenuProvider()),
          ChangeNotifierProvider(create: (_) => ShelterProvider()),
        ],
        child: MaterialApp(
            theme: ThemeData(
              textTheme: GoogleFonts.ubuntuTextTheme(
                Theme.of(context).textTheme,
              ),
            scaffoldBackgroundColor: Colors.white
            ),
            home: MyHomePage()));
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    _internetListenerInit();
    _getLocation();
  }

  _internetListenerInit() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        BasicDialog.showDialog(context, NoInternetDialog());
      }
    });
  }

  _getLocation() {
    context.read<LocationProvider>().getLocation();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return context.watch<LocationProvider>().status != LocationStatus.New
        ? MenuDashboardLayout(AdoptPetListPage())
        : Scaffold(
            body: Center(
              child: LoadingIndicator(),
            ),
          );
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }
}
