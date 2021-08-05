import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
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
