import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basicText.dart';
import 'package:lapka/settings/colors.dart';

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: BasicColors.white),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.wifi_off,
                  color: BasicColors.darkGreen,
                  size: 50,
                ),
                SizedBox(height: 16),
                BasicText.captionBold(
                  "Brak połączenia z internetem",
                  center: true,
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: BasicText.caption(
                    "Połącz swój telefon z interentem, aby dalej korzystać z apliakcji",
                    center: true,
                  ),
                )
              ],
            ),
          ),
        );
  }
}