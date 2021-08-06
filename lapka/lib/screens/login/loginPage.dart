import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicFormField.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/components/basicDialog.dart';
import 'package:lapka/settings/colors.dart';

import 'loginDialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  _login() {
    BasicDialog.showDialog(
      context,
      LoginDialog(
        onExit: (){},
        onLogin: (){},
      )
    );
  }

  _moveToRegister() {
    throw UnimplementedError();
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
                  child: SvgPicture.asset(
                    'lib/assets/loginCat.svg',
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
                    BasicText.heading2Bold('Zaloguj się',
                        color: BasicColors.white),
                    InkWell(
                      onTap: _moveToRegister,
                      child: Row(
                        children: [
                          BasicText.subtitleLight(
                            'Zajerestruj się',
                            color: BasicColors.white.withOpacity(0.7),
                          ),
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
                  BasicText.subtitleLight(
                    'Lub zaloguj się przez',
                    color: BasicColors.white,
                  ),
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
