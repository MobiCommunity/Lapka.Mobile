import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/loginFormField.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/checkConectivity.dart';
import 'package:lapka/utils/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  _login() {
    formKey.currentState!.validate();
  }

  _moveToRegister() async {
    InternetConectivity.check(context);
  }

  _forgotPassword() {
    throw UnimplementedError();
  }

  _loginGoogle() {
    throw UnimplementedError();
  }

  _loginFacebook() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn();
    switch (result.status) {
      case FacebookLoginStatus.success:
        print(result.accessToken);
        facebookLogin.getUserProfile();
        break;
      case FacebookLoginStatus.cancel:
        print('canceled');
        break;
      case FacebookLoginStatus.error:
        print('error');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicColors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Container(
                    height: 170,
                    child: SvgPicture.asset(
                      'lib/assets/login-cat.svg',
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
                LoginFormField(
                  validator: (text) => Validators.multiValidator([
                                VaidatorModel(
                                    Validators.notEmpty, 'Musisz podać email'),
                                VaidatorModel(
                                    Validators.email, 'Nieprawidłowy mail'),
                              ], text),
                    leading: Icon(
                      Icons.perm_identity,
                      color: BasicColors.white,
                      size: 22,
                    ),
                    controller: TextEditingController()),
                SizedBox(height: 25),
                LoginFormField(
                    password: true,
                    validator: (text) => Validators.multiValidator([
                                VaidatorModel(
                                    Validators.notEmpty, 'Musisz podać hasło'),
                                VaidatorModel(
                                    Validators.min8Chars, 'Hasło musi mieć 8 znaków'),
                              ], text),
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
      ),
    );
  }
}
