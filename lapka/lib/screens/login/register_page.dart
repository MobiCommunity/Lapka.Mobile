import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/lapka_snackbar.dart';
import 'package:lapka/components/basic/login_form_field.dart';
import 'package:lapka/injector.dart';
import 'package:lapka/providers/register/register_bloc.dart';
import 'package:lapka/providers/global_loader/global_loader_cubit.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:lapka/utils/validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final RegisterFieldTextControllers _registerFieldTextControllers =
      RegisterFieldTextControllers();
  final formKey = GlobalKey<FormState>();

  _moveToLogin() {
    Navigator.pop(context);
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> _errorSnackBar(
      BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    return ScaffoldMessenger.of(context)
        .showSnackBar(LapkaSnackBar.error(message: message));
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> _successSnackBar(
      BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    return ScaffoldMessenger.of(context)
        .showSnackBar(LapkaSnackBar(message: message));
  }

  _register() {
    if (formKey.currentState!.validate()) {
      context.read<RegisterBloc>().add(
            RegisterEvent.signUp(
              _registerFieldTextControllers.name,
              _registerFieldTextControllers.name,
              'LastName',
              _registerFieldTextControllers.email,
              _registerFieldTextControllers.password,
            ),
          );
    }
  }

  _registerByGoogle() {}

  _registerByFb() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicColors.darkGreen,
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          _listenRegisterState(state, context);
        },
        child: Padding(
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
                              BasicText.subtitleLight(
                                'Zaloguj się',
                                color: BasicColors.white.withOpacity(0.7),
                              ),
                            ],
                          ),
                        ),
                        BasicText.heading2Bold('Zajerestruj się',
                            color: BasicColors.white),
                      ],
                    ),
                  ),
                  LoginFormField(
                    placeholder: 'Email',
                    validator: (text) => Validators.multiValidator([
                      VaidatorModel(Validators.notEmpty, 'Musisz podać email'),
                      VaidatorModel(Validators.email, 'Nieprawidłowy mail'),
                    ], text),
                    leading: Icon(
                      Icons.perm_identity,
                      color: BasicColors.white,
                      size: 22,
                    ),
                    controller: _registerFieldTextControllers.emailController,
                  ),
                  SizedBox(height: 16),
                  LoginFormField(
                    placeholder: 'Imię',
                    validator: (text) => Validators.multiValidator([
                      VaidatorModel(
                        Validators.notEmpty,
                        'Musisz podać imię',
                      ),
                    ], text),
                    leading: Icon(
                      Icons.perm_identity,
                      color: BasicColors.white,
                      size: 22,
                    ),
                    controller: _registerFieldTextControllers.nameController,
                  ),
                  SizedBox(height: 16),
                  LoginFormField(
                    placeholder: 'Hasło',
                    password: true,
                    validator: (text) => Validators.multiValidator([
                      VaidatorModel(
                        (_) => _checkPasswordMatch(),
                        'Hasła się różnią',
                      ),
                      VaidatorModel(Validators.notEmpty, 'Musisz podać hasło'),
                      VaidatorModel(
                          Validators.min8Chars, 'Hasło musi mieć 8 znaków'),
                    ], text),
                    leading: Icon(
                      Icons.lock_open,
                      color: BasicColors.white,
                      size: 22,
                    ),
                    controller:
                        _registerFieldTextControllers.passwordController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  LoginFormField(
                      placeholder: 'Powtórz hasło',
                      password: true,
                      validator: (text) => Validators.multiValidator([
                            VaidatorModel(
                              (_) => _checkPasswordMatch(),
                              'Hasła się różnią',
                            ),
                            VaidatorModel(
                              Validators.notEmpty,
                              'Musisz podać hasło',
                            ),
                            VaidatorModel(
                              Validators.min8Chars,
                              'Hasło musi mieć 8 znaków',
                            ),
                          ], text),
                      leading: Icon(
                        Icons.lock_open,
                        color: BasicColors.white,
                        size: 22,
                      ),
                      controller: _registerFieldTextControllers
                          .repeatedPasswordController),
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
      ),
    );
  }

  void _listenRegisterState(RegisterState state, BuildContext context) {
    state.when(
      idle: () => getIt.get<GlobalLoaderCubit>().setIdle(),
      signingUp: () {
        getIt.get<GlobalLoaderCubit>().setBusy();
      },
      error: (exp) {
        getIt.get<GlobalLoaderCubit>().setIdle();
        _errorSnackBar(
          context,
          NetworkExceptions.getErrorMessage(exp),
        );
      },
      success: () {
        getIt.get<GlobalLoaderCubit>().setIdle();
        _successSnackBar(context, "Successfully Created Account");
        NavigatorHelper.pop(context);
      },
    );
  }

  bool _checkPasswordMatch() {
    return _registerFieldTextControllers.password ==
        _registerFieldTextControllers.repeatedPassword;
  }
}

class RegisterFieldTextControllers {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatedPasswordController =
      TextEditingController();

  String get email => emailController.text;

  String get name => nameController.text;

  String get password => passwordController.text;

  String get repeatedPassword => repeatedPasswordController.text;

  final FocusNode emailFocus = FocusNode();
  final FocusNode nameFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode repeatedPasswordFocus = FocusNode();

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    repeatedPasswordController.dispose();
  }
}
