import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/checkConectivity.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  _login() {
    BasicDialog.showDialog(context,
      Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical : 24.0),
          child: Stack(
            children: [
              
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BasicText.heading2Bold('Uppps'),
                  SizedBox(height: 6),
                  Container(height: 90,width: 90,color: Colors.grey,),
                  SizedBox(height: 24,),
                  BasicText.subtitle('Zaloguj się lub załóż konto'),
                  SizedBox(height:4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: BasicText.body14Light(
                      'Aby skorzystać z tej możliwości musisz się zalogować! Jeśli nie posiadasz jeszcze konta załóż je już teraz. Rejestracja potrwa jedynie kilka chwil. :)',
                      center: true,
                      ),
                  )
                ],
              ),
              Container(height: 100, width:150, color: Colors.red,),
            ],
          ),
        ),
        color: BasicColors.white
      )
    );
  }

  _moveToRegister() async{

    InternetConectivity.check(context);
  }

  _forgotPassword() {
    throw UnimplementedError();
  }

  _loginGoogle() {
    throw UnimplementedError();
  }

  _loginFacebook() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicColors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Container(
                  height: 170,
                  child: SvgPicture.asset('lib/assets/login-cat.svg',
                      color: Colors.white.withOpacity(0.7),
                      fit: BoxFit.fitHeight,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicText.heading2Bold('Zaloguj się', color: BasicColors.white),
                    InkWell(
                      onTap: _moveToRegister,
                      child: Row(
                        children: [
                          BasicText.subtitleLight('Zajerestruj się', color: BasicColors.white.withOpacity(0.7),),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: BasicColors.white.withOpacity(0.7),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BasicFormField(
                  leading: Icon(
                    Icons.perm_identity,
                    color: BasicColors.white,
                    size: 22,
                  ),
                  controller: TextEditingController()),
              SizedBox(height: 25),
              BasicFormField(
                  leading: Icon(
                    Icons.lock_open,
                    color: BasicColors.white,
                    size: 22,
                  ),
                  controller: TextEditingController()),
              SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: _forgotPassword,
                  child: BasicText.subtitleLight(
                    "Zapomniałeś hasła?",
                    color: BasicColors.white.withOpacity(0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              BasicButton(
                onPressed: _login,
                color: BasicColors.white,
                textColor: BasicColors.lightGreen,
                text: "ZALOGUJ SIĘ",
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BasicText.subtitleLight('Lub zaloguj się przez', color: BasicColors.white,),
                  Row(
                    children: [
                      InkWell(
                          onTap: _loginGoogle,
                          child: SvgPicture.asset(
                            'lib/assets/google.svg',
                            color: BasicColors.white,
                            height: 36,
                          )),
                      SizedBox(
                        width: 25,
                      ),
                      InkWell(
                          onTap: _loginFacebook,
                          child: SvgPicture.asset(
                              'lib/assets/facebook-logo.svg',
                              height: 36)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
