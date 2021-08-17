import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basicButton.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/components/basic/cancelButton.dart';
import 'package:lapka/settings/colors.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({Key? key, required this.onExit, required this.onLogin}) : super(key: key);
  final Function() onLogin;
  final Function() onExit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 11),
            child: Container(
              decoration: BoxDecoration(
                  color: BasicColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BasicText.heading2Bold('Uppps'),
                    SizedBox(height: 6),
                    SvgPicture.asset(
                      'lib/assets/alert-cat.svg',
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    BasicText.subtitle('Zaloguj się lub załóż konto'),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BasicText.body14Light(
                        'Aby skorzystać z tej możliwości musisz się zalogować! Jeśli nie posiadasz jeszcze konta załóż je już teraz. Rejestracja potrwa jedynie kilka chwil. :)',
                        center: true,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BasicButton(
                        text: 'ZALOGUJ SIĘ',
                        onPressed: onLogin
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 44,
            alignment: Alignment.topRight,
            child: CancelButton(
              onPressed: onExit
            ),
          )
        ],
      ),
    );
  }
}
