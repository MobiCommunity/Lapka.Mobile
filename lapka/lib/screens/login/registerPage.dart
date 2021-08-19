import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/loginFormField.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/checkConectivity.dart';
import 'package:lapka/utils/validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  _moveToLogin(){
    Navigator.pop(context);
  }

  _register(){
    formKey.currentState!.validate();
  }

  _registerByGoogle(){

  }

  _registerByFb(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicColors.darkGreen,
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
                      InkWell(
                        onTap: _moveToLogin,
                        child: Row(
                          children: [
                            
                              Icon(
                                Icons.arrow_back,
                                color: BasicColors.white.withOpacity(0.7),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            BasicText.subtitleLight('Zaloguj się',
                                color: BasicColors.white.withOpacity(0.7)),
                          ],
                        ),
                      ),
                      BasicText.heading2Bold(
                        'Zajerestruj się',
                        color: BasicColors.white
                      ),
                    ],
                  ),
                ),
                LoginFormField(
                  placeholder: 'Email',
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
                SizedBox(height: 16),
                LoginFormField(
                  placeholder: 'Imię',
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
                SizedBox(height: 16),
                LoginFormField(
                  placeholder: 'Hasło',
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
                LoginFormField(
                  placeholder: 'Powtórz hasło',
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
                  height: 25,
                ),
                BasicButton(
                  onPressed: _register,
                  color: BasicColors.white,
                  textColor: BasicColors.darkGreen,
                  text: "ZAREJESTRUJ SIĘ",
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicText.subtitleLight(
                      'Lub zarejestruj się przez',
                      color: BasicColors.white,
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: _registerByGoogle,
                            child: SvgPicture.asset(
                              'lib/assets/google.svg',
                              color: BasicColors.white,
                              height: 36,
                            )),
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                            onTap: _registerByFb,
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
