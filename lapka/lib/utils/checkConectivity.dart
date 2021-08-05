import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:lapka/components/dialogs/basicDialog.dart';
import 'package:lapka/components/dialogs/noInternetDialog.dart';

class InternetConectivity {
  static Future<bool> check(context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      BasicDialog.showDialog(context, NoInternetDialog());
      return false;
    } 
    return true;
  }
}
