import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/components/dialogs/noInternetDialog.dart';
import 'package:lapka/providers/loginProvider.dart';
import 'package:lapka/screens/login/loginPage.dart';
import 'package:lapka/settings/colors.dart';
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

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
          if(result == ConnectivityResult.none){
            BasicDialog.showDialog(context,
                NoInternetDialog()
             );
          }
    });
  }

// Be sure to cancel subscription after you are done
  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          showLocalization: true,
          localization: 'Rzeszów',
        ),
        body: LoginPage());
  }
}
