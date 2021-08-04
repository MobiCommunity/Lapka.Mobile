import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicTrailingButton.dart';
import 'package:lapka/screens/login/loginPage.dart';
import 'package:lapka/settings/colors.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
