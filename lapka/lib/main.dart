import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/components/dialogs/noInternetDialog.dart';
import 'package:lapka/providers/locationProvider.dart';
import 'package:lapka/providers/loginProvider.dart';
import 'package:lapka/screens/login/loginPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => LoginProvider()),
            ChangeNotifierProvider(create: (_) => LocationProvider()),
          ],
          child: MyHomePage(),
        ));
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
    _internetListenerInit();
    _getLocation();
  }

  _internetListenerInit(){
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        BasicDialog.showDialog(context, NoInternetDialog());
      }
    });
  }

  _getLocation(){
    context.read<LocationProvider>().getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          showLocalization: true,
          localization: context.watch<LocationProvider>().city ?? 'brak',
        ),
        body: LoginPage());
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }
}
