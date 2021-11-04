import 'package:flutter/material.dart';

enum LoginStatus { New, Loading, Done, Error }

class LoginProvider with ChangeNotifier {
  LoginStatus status = LoginStatus.Done;
}
